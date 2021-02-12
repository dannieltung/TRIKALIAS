class RemoveSkuFromPriceLists < ActiveRecord::Migration[6.0]
  def change
    remove_reference :price_lists, :sku, null: false, foreign_key: true
  end
end
