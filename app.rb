require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

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
  player = Game.create(:name => name)
  redirect("/turn/1")
end

get('/turn/:id') do
  stop_number = params.fetch('id').to_i
  green_status_bar = ['<span class="green-status-bar">']
  turn_number = 20
  turn_number.times do
    green_status_bar.push("|")
  end
  step_number = 2
  step_number.times do
    green_status_bar.insert(step_number, "</span>")
    step_number += 1
  end
  @green_status = green_status_bar.join(" ")
  erb(:turn)
end
