class VendorsController < ApplicationController

  def index
  end

  def new 
  	@vendor = Vendor.new
  end
end
