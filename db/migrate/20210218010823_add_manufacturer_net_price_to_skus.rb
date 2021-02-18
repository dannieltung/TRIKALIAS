class AddManufacturerNetPriceToSkus < ActiveRecord::Migration[6.0]
  def change
    add_column :skus, :manufacturer_net_price, :float
  end
end
