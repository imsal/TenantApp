class PropertiesController < ApplicationController

  before_action :set_property, only: [:show, :edit, :update, :destroy]







  def new
    @property = Property.new

  end


  def show
    @buildings = @property.buildings
  end

  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: property.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end

  end

  private

  def property_params
    params.require(:property).permit(:name, :entity, :sq_ft, :tax, :portfolio_id)
  end

  def set_property
    @property = Property.find(params[:id])
  end

end
