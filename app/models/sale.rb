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

	def self.current_month_sale(sale)
		if !sale.purchase_time.nil?
			if (sale.purchase_time.month == Time.now.month) && (sale.purchase_time.year == Time.now.year)
				return true
			end
		end
	end

	def self.no_sales(sales)
		reutrn true if sales.length == 0
	end
end
