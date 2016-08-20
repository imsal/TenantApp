class FindInfoController < ApplicationController
  #before_action :require_user # Requires Basic Authentication To Access Page


  def index

    @portfolio = Portfolio.all
    @property = Property.all
    @building = Building.all
    @suite = Suite.all
    @tenant = Tenant.all

  end


end
