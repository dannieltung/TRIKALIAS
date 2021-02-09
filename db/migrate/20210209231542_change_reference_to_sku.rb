class ChangeReferenceToSku < ActiveRecord::Migration[6.0]
  def change
    rename_column :price_lists, :reference, :SKU
  end
end
