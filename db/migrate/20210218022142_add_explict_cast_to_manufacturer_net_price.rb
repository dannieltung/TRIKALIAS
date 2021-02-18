class AddExplictCastToManufacturerNetPrice < ActiveRecord::Migration[6.0]
  def change
    change_column :skus, :manufacturer_net_price, 'float USING CAST(manufacturer_net_price AS float)'
  end
end
