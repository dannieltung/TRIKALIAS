class AddGtinToSkus < ActiveRecord::Migration[6.0]
  def change
    add_column :skus, :gtin, :string
  end
end
