class PortfoliosController < ApplicationController
  #before_action :require_user # Requires Basic Authentication To Access Page
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]


  def new
    @portfolio = Portfolio.new
  end


  def index
    @portfolio = Portfolio.all
  end

  def show
    @properties = @portfolio.properties # subclass of portfolio
  end

  def edit
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new }
        format.json { render json: portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:id,:name, :team)
  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end


end
