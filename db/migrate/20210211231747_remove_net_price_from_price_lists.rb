class RemoveNetPriceFromPriceLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :price_lists, :net_price1
    remove_column :price_lists, :net_price2
    remove_column :price_lists, :net_price3
    remove_column :price_lists, :net_price4
    remove_column :price_lists, :net_price5
    remove_column :price_lists, :net_price6
    remove_column :price_lists, :net_price7
    remove_column :price_lists, :net_price8
    remove_column :price_lists, :net_price9
    remove_column :price_lists, :net_price10
  end
end
