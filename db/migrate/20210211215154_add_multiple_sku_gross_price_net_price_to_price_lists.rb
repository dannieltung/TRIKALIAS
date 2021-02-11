class AddMultipleSkuGrossPriceNetPriceToPriceLists < ActiveRecord::Migration[6.0]
  def change
    add_column :price_lists, :SKU2, :string
    add_column :price_lists, :gross_price2, :float
    add_column :price_lists, :net_price2, :float
    add_column :price_lists, :SKU3, :string
    add_column :price_lists, :gross_price3, :float
    add_column :price_lists, :net_price3, :float
    add_column :price_lists, :SKU4, :string
    add_column :price_lists, :gross_price4, :float
    add_column :price_lists, :net_price4, :float
    add_column :price_lists, :SKU5, :string
    add_column :price_lists, :gross_price5, :float
    add_column :price_lists, :net_price5, :float
    add_column :price_lists, :SKU6, :string
    add_column :price_lists, :gross_price6, :float
    add_column :price_lists, :net_price6, :float
    add_column :price_lists, :SKU7, :string
    add_column :price_lists, :gross_price7, :float
    add_column :price_lists, :net_price7, :float
    add_column :price_lists, :SKU8, :string
    add_column :price_lists, :gross_price8, :float
    add_column :price_lists, :net_price8, :float
    add_column :price_lists, :SKU9, :string
    add_column :price_lists, :gross_price9, :float
    add_column :price_lists, :net_price9, :float
    add_column :price_lists, :SKU10, :string
    add_column :price_lists, :gross_price10, :float
    add_column :price_lists, :net_price10, :float
  end
end
