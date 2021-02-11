class AddSkuReferenceToPriceLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :price_lists, :sku, index: true
    add_foreign_key :price_lists, :skus
  end
end
