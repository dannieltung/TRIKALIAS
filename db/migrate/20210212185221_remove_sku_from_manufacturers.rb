class RemoveSkuFromManufacturers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :manufacturers, :sku, null: false, foreign_key: true
  end
end
