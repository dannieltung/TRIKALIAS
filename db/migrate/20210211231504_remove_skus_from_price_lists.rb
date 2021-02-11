class RemoveSkusFromPriceLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :price_lists, :SKU1
    remove_column :price_lists, :SKU2
    remove_column :price_lists, :SKU3
    remove_column :price_lists, :SKU4
    remove_column :price_lists, :SKU5
    remove_column :price_lists, :SKU6
    remove_column :price_lists, :SKU7
    remove_column :price_lists, :SKU8
    remove_column :price_lists, :SKU9
    remove_column :price_lists, :SKU10
  end
end
