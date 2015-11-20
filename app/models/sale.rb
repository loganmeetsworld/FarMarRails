class Sale < ActiveRecord::Base
	belongs_to :vendor
	belongs_to :market

	def self.add_total(sales)
		a = []
		sales.each do |sale|
			a.push(sale.amount)
		end

		return a.inject(:+).to_f/100
	end


end
