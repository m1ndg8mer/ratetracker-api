class AddCurrencyModel < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name
    end  
  end
end
