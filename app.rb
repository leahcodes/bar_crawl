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
  game = Game.create(:name => name, :money => 60.69, :energy => 30, :happiness => 30, :stop_id => 1 )
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

  erb(:turn)
end

##################### BAR ######################

patch('/random_events/bar') do

  @game = Game.all.last
  turn = @game.stop_id
  bar = Styling.new
  @green_status = bar.status_bar(turn)
  @stop = Stop.find(@game.stop_id)


  @empty_object = Styling.new


  @event = RandomEvent.new_random_event
  @stop = Stop.find(@game.stop_id)


  @game.update({happiness: @game.happiness + 10}) # because drink beer

  if @game.lose == 2
    redirect('/lose')
  elsif # update random events
    if @event.change_happiness != nil
      @game.update({happiness: @game.happiness + @event.change_happiness.to_i})
    end

    if @event.change_energy != nil
      @game.update({energy: @game.energy + @event.change_energy.to_i})
    end

    if @event.change_money != nil
      @game.update({money: @game.money + @event.change_money.to_i})
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
  turn = @game.stop_id
  bar = Styling.new
  @green_status = bar.status_bar(turn)
  @stop = Stop.find(@game.stop_id)

  @event = RandomEvent.new_random_event

  @empty_object = Styling.new

  @game.update({energy: @game.energy + 10}) # because drink beer

  if @game.lose == 1
    redirect('/lose')
  elsif # update random events

    if @event.change_energy != nil
      @game.update({energy: @game.energy + @event.change_energy.to_i})
    end
    
    if @event.change_happiness != nil
      @game.update({happiness: @game.happiness + @event.change_happiness.to_i})
    end

    if @event.change_money != nil
      @game.update({money: @game.money + @event.change_money.to_i})
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
  erb(:map)
end
