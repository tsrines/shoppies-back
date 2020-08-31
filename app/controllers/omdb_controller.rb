class OmdbController < ApplicationController
  def get_movies
    result =
      RestClient.get(
        "http://www.omdbapi.com/?i=#{ENV['OMDB_ID']}&apikey=#{
          ENV['OMDB_API_KEY']
        }&type=movie&page=#{params[:page]}&s=#{params[:q]}"
      )
    render json: result
  end
end
