class AddLgToManugacturers < ActiveRecord::Migration[6.0]
  def change
    add_column :manufacturers, :LG, :integer
  end
end
