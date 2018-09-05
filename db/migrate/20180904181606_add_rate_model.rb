class AddRateModel < ActiveRecord::Migration[5.1]
  def change
	  create_table :rates do |t|
			t.integer "pair_from_id"
			t.integer "pair_to_id"
			t.decimal "amount"
		end
  end
end
