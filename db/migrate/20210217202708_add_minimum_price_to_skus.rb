class AddMinimumPriceToSkus < ActiveRecord::Migration[6.0]
  def change
    add_column :skus, :minimum_price, :float
  end
end
