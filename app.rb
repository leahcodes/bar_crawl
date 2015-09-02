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
  game = Game.create(:name => name, :money => 100, :energy => 100, :happiness => 100, :stop_id => 0 )
  redirect("/turn/1")
end

get('/turn/:id') do
  @game = Game.all()
  turn = params.fetch('id').to_i + 10
  bar = Styling.new
  @green_status = bar.status_bar(turn)
  erb(:turn)
end

get('/random_event/bar') do
  @game = Game.all.last
  @event = RandomEvent.new_random_event

  # @game.update({happiness: @game.happiness - @event.change_happiness}) if @event.change_happiness != nil
  # @game.update({energy: @game.energy - @event.change_energy}) if @event.change_energy != nil
  # @game.update({money: @game.money - @event.change_money}) if @event.change_money != nil
  turn = 10
  bar = Styling.new
  @green_status = bar.status_bar(turn)
  erb(:turn_event)
end

patch('/random_event/bar') do
  turn = 1
  bar = Styling.new
  @green_status = bar.status_bar(turn)
  @game = Game.all.last
  @event = RandomEvent.new_random_event

  @game.update({happiness: @game.happiness - @event.change_happiness}) if @event.change_happiness != nil
  @game.update({energy: @game.energy - @event.change_energy}) if @event.change_energy != nil
  @game.update({money: @game.money - @event.change_money}) if @event.change_money != nil
  erb(:turn_event)
end

get('/running') do
  erb(:running_page)
end
