class Api::V1::CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render 'index.json.jbuilder'
  end
  def show
    @capstone = Capstone.find(params[:id])
    render 'show.json.jbuilder'
  end
  def create
    capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot]
    )
    capstone.save
    p params
    redirect_to '/capstones'
  end
  def update
    capstone = Capstone.find(params[:id])
    capstone.update(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot]
    )
    p params
    redirect_to '/capstones'
  end
  def destroy
    capstone = Capstone.find(params[:id])
    capstone.destroy
    redirect_to '/capstones'
  end
end
