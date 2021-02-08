class AddNameToManugacturers < ActiveRecord::Migration[6.0]
  def change
    add_column :manufacturers, :name, :string
  end
end
