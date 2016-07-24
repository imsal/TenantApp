class FindInfoController < ApplicationController


  def index

    @portfolio = Portfolio.all
    @property = Property.all
    @building = Building.all
    @suite = Suite.all
    @tenant = Tenant.all

  end


end
