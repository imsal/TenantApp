class BuildingsController < ApplicationController

  before_action :set_building, only: [:show, :edit, :update, :destroy]

  def new
    @building = Building.new
  end

  def index
  end

  def show
  end

  def edit
  end

  def create
    @building = Building.new(building_params)

    respond_to do |format|
      if @building.save
        format.html { redirect_to @building, notice: 'Building was successfully created.' }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new }
        format.json { render json: building.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private

  def building_params
    params.require(:building).permit(:id, :property_id, :name, :address, :city, :state, :zip_code)
  end

  def set_building
    @building = Building.find(params[:id])
  end

end