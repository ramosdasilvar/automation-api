# frozen_string_literal: true

Dado('o endereço de uma api de consulta de filme') do
  @endpoint = TmdbApi.new
end

Quando('consulto um filme através do id') do |table|
  @id = table.hashes.first
  @response = @endpoint.get_movie(@id[:id])
end

Entao('api retorna status code {int}') do |status_code|
  expect(@response.code).to eql(status_code)
end

Entao('apresenta os dados do filme') do
  @tmdb_ids = @response ['imdb_id']
  @language = @response ['original_language']
end

Entao('sistema retorna mensagem {string}') do |mensagem|
  expect(@response['status_message']).to eql(mensagem)
end
