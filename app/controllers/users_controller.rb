class UsersController < ApplicationController
	def index
	end

	def show
	end

	def markets
		@markets = Market.all
	end

	def show_market
	  @market = Market.find(params[:id])
	end




end
