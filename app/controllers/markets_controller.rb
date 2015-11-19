class MarketsController < ApplicationController

  def index

  end

  def show
    @market = Market.find(params[:id])
  end

  def show_markets
    @markets = Market.all.order(:created_at).reverse_order
  end

  def destroy
    Market.destroy(params[:id])
    redirect_to '/markets/'
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

  def update
    market = Market.find(params[:id])
    market.update(market_params[:market])
    redirect_to '/markets/'
  end

  private

  def market_params
    params.permit(market:[:name, :address, :city, :county, :state, :zip])
  end

end
