class Sale < ActiveRecord::Base
	belongs_to :vendor
	belongs_to :market

	def self.add_total(sales)
		a = []
		sales.each do |sale|
			if !sale.amount.nil?
				a.push(sale.amount)
			end
		end

		return a.inject(:+).to_f/100
	end


end
