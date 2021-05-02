# frozen_string_literal: true

Dado('o endereço de uma api de consulta de filme') do
  @endpoint = TmdbApi.new
end

Quando('consulto um filme através do ID') do
  @id = '19404'
  @response = @endpoint.get_movie(@id)
end

Então('é apresentado tmdb id {string}') do |tmdb_id|
  expect(@response['imdb_id']).to eql(tmdb_id)
end
