class AddReferenceToPriceLists < ActiveRecord::Migration[6.0]
  def change
    add_column :price_lists, :reference, :string
  end
end
