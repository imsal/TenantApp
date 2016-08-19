class VendorsController < ApplicationController

  before_action :set_vendor, only: [:show, :edit, :update, :destroy]


  def new
    @vendor = Vendor.new
  end

  def edit
  end

  def show
  end

  def create
    @vendor = Vendor.new(vendor_params)

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to @vendor, notice: 'Tenant was successfully created.' }
        format.json { render :show, status: :created, location: @vendor }
      else
        format.html { render :new }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end



###






  def update
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to @vendor, notice: 'Vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor }
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
  end

  private

  def vendor_params
    params.require(:vendor).permit(:id, :company_name, :service_type, :website)
  end

  def set_vendor
    @vendor = Vendor.find(params[:id])
  end

end
