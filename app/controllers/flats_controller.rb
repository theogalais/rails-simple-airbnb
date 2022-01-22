class FlatsController < ApplicationController

  def new
    @flat = Flat.new
  end

  def index
    @flats = Flat.all
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path(@flats)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path(@flats)
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flats_path(@flats)
  end

  def show
    @flat = Flat.find(params[:id])
  end

private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
