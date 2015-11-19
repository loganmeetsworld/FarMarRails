class ProductsController < ApplicationController

	def find_vendor 
		@vendor = Vendor.find(params[:vendor_id])
	end

	def index
		find_vendor
		@products = Product.find(:vendor_id => @vendor.id)
	end

	def product_params
		params.permit(product: [:name, :vendor_id])
	end
end
