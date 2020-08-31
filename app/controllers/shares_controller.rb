class SharesController < ApplicationController

  def create
    share = Share.create(share_params)
    render json: share
  end

  def show
    share = Share.find(params[:id])
    resArray = []

    ids = share[:csv].split(",").map {|num| num.to_i}
    ids.each do |id| 
      movie = Movie.all.find(id)
      resArray.push(movie)
    end

    render json: resArray
  end

  

  private

  def share_params
    params.permit(:csv)
  end
end
