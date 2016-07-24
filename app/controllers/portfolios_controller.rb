class PortfoliosController < ApplicationController

  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio = Portfolio.all
  end

  def show
  end

  def update
  end

  def destroy
  end



  private

  def portfolio_params
  end

  def set_portfolio
    @building = Portfolio.find(params[:id])
  end

end
