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

  green_status_bar = ['<span class="green-status-bar">']
  turn_number = 20
  turn_number_float = 20.0
  turn_number.times do
    green_status_bar.push("|")
  end
  step_number = params.fetch('id').to_i + 1
  step_number.times do
    green_status_bar.insert(step_number, "</span>")
    step_number += 1
  end
  percent = (((step_number - 3) / turn_number_float) * 100).round(0).to_s + "%"
  green_status_bar.push(percent)
  @green_status = green_status_bar.join(" ")
  erb(:turn)
end


patch('/random_events/bar') do
  @game = Game.all.last
  @event = RandomEvent.new_random_event

  @game.update({happiness: @game.happiness - @event.change_happiness}) if @event.change_happiness != nil
  @game.update({energy: @game.energy - @event.change_energy}) if @event.change_energy != nil
  @game.update({money: @game.money - @event.change_money}) if @event.change_money != nil
  erb(:turn_event)
end
