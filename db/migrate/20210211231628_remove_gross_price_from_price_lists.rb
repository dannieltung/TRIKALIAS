class RemoveGrossPriceFromPriceLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :price_lists, :gross_price1
    remove_column :price_lists, :gross_price2
    remove_column :price_lists, :gross_price3
    remove_column :price_lists, :gross_price4
    remove_column :price_lists, :gross_price5
    remove_column :price_lists, :gross_price6
    remove_column :price_lists, :gross_price7
    remove_column :price_lists, :gross_price8
    remove_column :price_lists, :gross_price9
    remove_column :price_lists, :gross_price10
  end
end
