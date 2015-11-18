require "csv"

market_csv = CSV.read("./seed_csvs/markets.csv")

market_array = []

market_csv.each do |row|
	market_hash = {
		name: row[1], address: row[2],
		city: row[3], county: row[4],
		state: row[5], zip: row[6]
	}

	market_array.push(market_hash)
end

market_array.each do |market|
	Market.create(market)
end
