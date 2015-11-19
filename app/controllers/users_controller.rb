class UsersController < ApplicationController
	def index
	end

	def show
	end

	def markets
		@markets = Market.all.order(:created_at).reverse_order
	end

	def show_market
	  @market = Market.find(params[:id])
	end

end
