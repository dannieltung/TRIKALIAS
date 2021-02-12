class RemoveManufacturerFromPriceLists < ActiveRecord::Migration[6.0]
  def change
    remove_reference :price_lists, :manufacturer, null: false, foreign_key: true
  end
end
