class RenameMinimiumPriceToMinimunSalePrice < ActiveRecord::Migration[6.0]
  def change
    rename_column :skus, :minimum_price, :minimum_sale_price
  end
end
