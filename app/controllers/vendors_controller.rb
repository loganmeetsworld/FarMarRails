class VendorsController < ApplicationController

  def index
  end

  def find_vendor
  	@vendor = Vendor.find(params[:id])
  end

  def new 
  	@vendor = Vendor.new
  end

  def show_vendors 
  	@vendors = Vendor.all
  end

  def show
  	find_vendor
  end

  def destroy
		@vendor = Vendor.destroy(params[:id])
		redirect_to show_vendors_vendors_path
	end 

	def create 
		Vendor.create(vendor_params[:vendor_id])
		redirect_to "/show_vendors_vendors"
	end

  def edit
  	find_vendor
  end

  def update
  	find_vendor

  	@vendor.update(vendor_params[:vendor])
  	redirect_to "/show_vendors_vendors"
  end

  private

	def vendor_params
		params.permit(vendor:[:name, :market_id])
	end
end
