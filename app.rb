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
