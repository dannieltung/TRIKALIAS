class AddPriceListReferenteToSkus < ActiveRecord::Migration[6.0]
  def change
    add_reference :skus, :price_list, index: true
    add_foreign_key :skus, :price_lists
  end
end
