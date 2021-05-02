# frozen_string_literal: true

class TmdbApi
  include HTTParty

  base_uri 'https://api.themoviedb.org/3'
  headers 'Content-Type' => 'application/json'
  default_params api_key: 'colocar_sua_chave_aqui'

  def get_movie(id)
    self.class.get("/movie/#{id}")
  end
end
