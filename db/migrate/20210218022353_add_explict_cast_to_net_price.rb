class AddExplictCastToNetPrice < ActiveRecord::Migration[6.0]
  def change
    change_column :skus, :net_price, 'float USING CAST(net_price AS float)'
  end
end
