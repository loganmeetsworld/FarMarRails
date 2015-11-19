class VendorsController < ApplicationController

  def index
    @market = Market.find(params[:id])
    render :show_vendor
  end

  def find_vendor
  	@vendor = Vendor.find(params[:id])
  end

  def new
  	@vendor = Vendor.new
  end

  def show_vendors
  	@vendors = Vendor.all.order(:created_at).reverse_order
  end

  def show
  	find_vendor
  end

  def destroy
		@vendor = Vendor.destroy(params[:id])

		redirect_to show_vendors_vendors_path
	end


	def create
		Vendor.create(vendor_params[:vendor])
		redirect_to show_vendors_vendors_path
	end

  def edit
  	find_vendor
  end

  def update
  	find_vendor

  	@vendor.update(vendor_params[:vendor])
  	redirect_to show_vendors_vendors_path
  end

  def market_vendors_path
  end

  private

	def vendor_params
		params.permit(vendor:[:name, :no_employees, :market_id])
	end
end
