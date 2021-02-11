class ChangeSkuToSku1 < ActiveRecord::Migration[6.0]
  def change
    rename_column :price_lists, :SKU, :SKU1
  end
end
