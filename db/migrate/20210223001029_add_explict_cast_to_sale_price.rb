class AddExplictCastToSalePrice < ActiveRecord::Migration[6.0]
  def change
    change_column :skus, :sale_price, 'float USING CAST(sale_price AS float)'
  end
end
