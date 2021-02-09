class AddGrossPriceToPriceLists < ActiveRecord::Migration[6.0]
  def change
    add_column :price_lists, :gross_price, :float
  end
end
