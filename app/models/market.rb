class Market < ActiveRecord::Base
	has_many :vendors
  def self.search(query)
    where("name like ?", "%#{query}%") 
  end
end
