class SpicesController < ApplicationController
  def index
    spices = Spice.all
    render json: spices
  end

  def create
    spice = Spice.create(spice_params)
    render json: spice, status: :created
  end

  def update
    spice =Spice.find_by(id: params[:id])
    spice.update(spice_params)
    render json: spice
  end

  def destroy
    spice = Spice.find_by(id: params[:id])
    spice.update(spice_params)
    render json:spice
    heade :no_content
  end

  private
  def spice_params
    params.permit(:titile, :image, :description, :notes, :rating)
  end
end
