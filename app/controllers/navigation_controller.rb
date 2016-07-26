class NavigationController < ApplicationController


  def index
    @portfolios = Portfolio.all
    @properties = Property.all
    @buildings = Building.all
    @suites = Suite.all
    @tenants = Tenant.all
  end


end
