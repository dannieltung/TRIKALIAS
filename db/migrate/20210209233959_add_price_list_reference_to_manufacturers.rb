class AddPriceListReferenceToManufacturers < ActiveRecord::Migration[6.0]
  def change
    add_reference :manufacturers, :price_list, index: true
    add_foreign_key :manufacturers, :price_lists
  end
end
