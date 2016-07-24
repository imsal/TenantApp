class TenantsController < ApplicationController

  before_action :set_tenant, only: [:show, :edit, :update]
  before_action :set_ids_for_edit, only: [:edit, :update]


  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @tenant.update(tenant_params)
        format.html { redirect_to @tenant, notice: 'Tenant was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenant }
      else
        format.html { render :edit }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end

  end


  private

  def set_tenant
    @tenant = Tenant.find(params[:id])
  end

  def set_ids_for_edit
    @portfolio = Portfolio.all
    @property = Property.all
    @building = Building.all
    @suite = Suite.all
  end

  def tenant_params
    params.require(:tenant).permit(:id, :suite_id, :building_id, :property_id, :portfolio_id, :first_name, :last_name, :job_title, :contact_type, :company_name, :email, :preferred_method_of_contact, :current, :phone_direct, :phone_direct_ext, :phone_mobile, :fax_number, :notes,)
  end

end






