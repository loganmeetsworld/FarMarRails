class ChangeColumnDatatypeToDatetime < ActiveRecord::Migration
  def change
  	change_table :sales do |t|
	  	change_column :sales, :purchase_time, :datetime
	  end
  end
end
