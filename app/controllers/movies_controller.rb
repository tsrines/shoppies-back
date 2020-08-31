class MoviesController < ApplicationController
  def create
    movie = Movie.find_or_create_by(movie_params)
    render json: movie
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  private

  def movie_params
    params.permit(:title, :year, :imdbID, :poster)
  end
end
