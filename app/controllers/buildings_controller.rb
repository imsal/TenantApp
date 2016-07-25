class BuildingsController < ApplicationController


  def new

  end

  def index

  end

  def show

  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def building_params
    params.require(:building).permite(:id, :property_id, :name, :address, :city, :state, :zip_code)
  end

  def set_building
    @building =
  end

end
