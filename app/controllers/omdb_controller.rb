class OmdbController < ApplicationController
  def get_movies
    result =
      JSON.parse(
        RestClient.get(
          "http://www.omdbapi.com/?i=#{ENV['OMDB_ID']}&apikey=#{
            ENV['OMDB_API_KEY']
          }&type=movie&page=#{params[:page]}&s=#{params[:q]}"
        )
      )

    # byebug

    back_end_movies =
      result['Search'].map do |movie|
        Movie.find_or_create_by(
          title: movie['Title'],
          poster: movie['Poster'],
          year: movie['Year'],
          imdbID: movie['imdbID']
        )
      end

    res = {}
    res['search'] = back_end_movies
    res['totalResults'] = result['totalResults']
    res['response'] = result['Response']

    render json: res

    # render json: result
    # render json: result
  end
end
