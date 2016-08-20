class NavigationController < ApplicationController
  #before_action :require_user # Requires Basic Authentication To Access Page


  def index
    @portfolios = Portfolio.all
    @properties = Property.all
    @buildings = Building.all
    @suites = Suite.all
    @tenants = Tenant.all
  end


end
