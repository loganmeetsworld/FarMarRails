class MarketsController < ApplicationController

  def index

  end

  def show

  end

  def show_markets
    @markets = Market.all
  end

  def new
    @market = Market.new
  end

  def create
    Market.create(market_params[:market])
    redirect_to '/markets/'
  end

  private

  def market_params
  params.permit(task:[:name, :address, :city, :county, :state, :zip])
end

end
