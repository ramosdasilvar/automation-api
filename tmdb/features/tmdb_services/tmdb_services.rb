# frozen_string_literal: true

class TmdbApi
  include HTTParty

  base_uri 'https://api.themoviedb.org/3'
  headers 'Content-Type' => 'application/json'
  default_params api_key: 'a636b4a268f612674218050a560ff3f0'

  def get_movie(id)
    self.class.get("/movie/#{id}")
  end
end
