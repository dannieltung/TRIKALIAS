class AddManufacturerReferenteToPriceLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :price_lists, :manufacturer, index: true
    add_foreign_key :price_lists, :manufacturers
  end
end
