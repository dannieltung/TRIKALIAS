class ChangeGrossPriceToGrossPrice1 < ActiveRecord::Migration[6.0]
  def change
    rename_column :price_lists, :gross_price, :gross_price1
  end
end
