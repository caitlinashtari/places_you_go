require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get('/') do
  @places = Place.all_places()
  erb(:index)
end

post('/form') do
  place_input = params.fetch('place_input')
  place = Place.new(place_input)
  place.save()
  erb(:result)
end
