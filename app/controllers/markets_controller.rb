class MarketsController < ApplicationController

  def index

  end

  def show
    @market = Market.find(params[:id])
  end

  def show_markets
    @markets = Market.all
  end

  def new
    @market = Market.new
    @title = "New Market"
  end

  def create
    Market.create(market_params[:market])
    redirect_to '/markets/'
  end

  def edit
    @market = Market.find(params[:id])
    @title = "Edit task"
  end

  private

  def market_params
    params.permit(task:[:name, :address, :city, :county, :state, :zip])
  end

end
