class PhotosController < ApplicationController
  def index
    render json: Photo.all
  end

  def show
    render json: Photo.find(params[:id])
  end
end
