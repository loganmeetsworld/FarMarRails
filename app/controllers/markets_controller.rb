class MarketsController < ApplicationController

  before_action :get_market, only: [:edit, :show, :update]

  def get_market
    @market = Market.find(params[:id])
  end

  def index

  end

  def show
    get_market
  end

  def show_markets
    @markets = Market.all.order(:created_at).reverse_order
  end

  def destroy
    Market.destroy(params[:id])
    redirect_to show_markets_markets_path
  end

  def new
    @market = Market.new
    @title = "New Market"
  end

  def create
    Market.create(market_params[:market])
    redirect_to show_markets_markets_path
  end

  def edit
    get_market
    @title = "Edit task"
  end

  def update
    get_market
    @market.update(market_params[:market])
    redirect_to show_markets_markets_path
  end

  private

  def market_params
    params.permit(market:[:name, :address, :city, :county, :state, :zip])
  end

end
