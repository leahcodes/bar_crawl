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
  stop_number = (params.fetch('id').to_i + 1)
  status_bar = ['<span class="green-status-bar">',"|","|","|","|","|","|","|","|","|","|","|","|","|","|","|","|","|","|","|","|"]
  status_bar.insert(stop_number,"</span>")
  @green_status = status_bar.join(" ")
  erb(:turn)
end
