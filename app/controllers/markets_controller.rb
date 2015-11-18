class MarketsController < ApplicationController

  def show
    @markets = Market.all
  end
end
