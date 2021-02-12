class AddSkuReferenceToManufacturers < ActiveRecord::Migration[6.0]
  def change
    add_reference :manufacturers, :sku, index: true
    add_foreign_key :manufacturers, :skus
  end
end
