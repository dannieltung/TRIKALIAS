class AddGrossPriceNetPriceSalePriceToSkus < ActiveRecord::Migration[6.0]
  def change
    add_column :skus, :gross_price, :float
    add_column :skus, :net_price, :float
    add_column :skus, :sale_price, :float
  end
end
