class NominationsController < ApplicationController
  def create
    nomination = Nomination.create(nomination_params)
    render json: nomination
  end

  def index
    render json: Nomination.all
  end

  def show
    nomination = Nomination.find_by(id: params[:id])
    render json: nomination
  end


  def destroy
    nomination = Nomination.find_by(id: params[:id])
    nomination.destroy
    render json: nomination
  end

  private

  def nomination_params
    params.permit(:user_id, :movie_id)
  end
end

#  "Title": "Rambo",
# "Year": "2008",
# "imdbID": "tt0462499",
# "Type": "movie",
# "Poster": "https://m.media-amazon.com/images/M/MV5BMTI5Mjg1MzM4NF5BMl5BanBnXkFtZTcwNTAyNzUzMw@@._V1_SX300.jpg"
