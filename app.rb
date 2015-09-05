# require 'active_record'
# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

require('pry')

get('/') do
  erb(:index)
end

get('/intro') do
  erb(:intro)
end

get('/about') do
  erb(:about)
end

get('/new_character') do
  erb(:new_character)
end


post('/new_character') do
  name = params.fetch("name")
  game = Game.create(:name => name, :money => 69.35, :energy => 30, :happiness => 30, :stop_id => 1 )
  redirect("/animation")
end

get('/turn/:id') do

  @game = Game.all.last
  @turn = @game.stop_id
  bar = Styling.new
  @green_status = bar.status_bar(@turn)
  @stop = Stop.find(@game.stop_id)
  @bar = Bar.find(@stop.bar_id)
  @coffee_shop = CoffeeShop.find(@stop.coffee_shop_id)

  if @turn > 17
      @turn = 17
  else
    @turn = @turn
  end

  erb(:turn)
end

##################### BAR ######################

patch('/random_events/bar') do
  @event = RandomEvent.new_random_event

  @game = Game.all.last
  @turn = @game.stop_id
  bar = Styling.new
  @green_status = bar.status_bar(@turn)
  @stop = Stop.find(@game.stop_id)

  if @turn > 17
      @turn = 17
  else
    @turn = @turn
  end

  @game.update({happiness: @game.happiness + 10}) # because drink beer

  if @game.lose == 2
    redirect('/lose')
  elsif # update random events
    if @event.change_happiness != nil
      new_happiness = @game.happiness + @event.change_happiness
      @game.update({happiness: new_happiness})
    end

    if @event.change_energy != nil
      new_energy = @game.energy + @event.change_energy
      @game.update({energy: new_energy})
    end

    if @event.change_money != nil
      new_money = @game.money + @event.change_money
      @game.update({money: new_money})
    end
  end

  if @game.lose != 4 # lose by energy/happiness conditions
    redirect('/lose')
  end

  new_turn = @game.stop_id.to_i + 1 # haven't died, increase stop
  @game.update({stop_id: new_turn})

  if @game.win_stop # check if win by stop, or win by kyle now that death condition eliminated
    redirect('/win_stop')
  elsif @event.bar.include?("Kyle")
    redirect('/win_kyle')
  else
    @beer = true
    @coffee = false
    erb(:turn_event)
  end
end

######################## CAFE ########################


patch('/random_events/coffee_shop') do
  @game = Game.all.last
  @event = RandomEvent.new_random_event

  @turn = @game.stop_id
  bar = Styling.new
  @green_status = bar.status_bar(@turn)
  @stop = Stop.find(@game.stop_id)

  if @turn > 17
      @turn = 17
  else
    @turn = @turn
  end

  @game.update({energy: @game.energy + 10}) # because drink coffee


  if @game.lose == 1
    redirect('/lose')
  elsif # update random events

    if @event.change_energy != nil
      new_energy = @game.energy + @event.change_energy
      @game.update({energy: new_energy})
    end

    if @event.change_happiness != nil
      new_happiness = @game.happiness + @event.change_happiness
      @game.update({happiness: new_happiness})
    end

    if @event.change_money != nil
      new_money = @game.money + @event.change_money
      @game.update({money: new_money})
    end

  end

  if @game.lose != 4 # lose by energy/happiness conditions
    redirect('/lose')
  end

  new_turn = @game.stop_id.to_i + 1 # haven't died, increase stop
  @game.update({stop_id: new_turn})

  if @game.win_stop # check if win by stop, or win by kyle now that death condition eliminated
    redirect('/win_stop')
  else
    @beer = false
    @coffee = true
    erb(:turn_event)
  end

end

########################

get('/win_stop') do
  @kyle = false
  erb(:win)
end

get('/win_kyle') do
  @kyle = true
  erb(:win)
end

get('/lose') do
  @game = Game.all.last
  @lose_condition = @game.lose
  erb(:lose)
end

get('/animation') do
  erb(:running_page)
end

get('/map/:id') do
  turn = params.fetch('id').to_i
  if turn > 17
      @turn = 17
  else
    @turn = turn
  end
  erb(:map)
end

get('/map/') do
  game = Game.all.last
  turn = game.stop_id
  if turn > 17
      @turn = 17
  else
    @turn = turn
  end
  erb(:map)
end
