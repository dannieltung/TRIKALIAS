class AddNetPrice1ToPriceLists < ActiveRecord::Migration[6.0]
  def change
    add_column :price_lists, :net_price1, :float
  end
end
