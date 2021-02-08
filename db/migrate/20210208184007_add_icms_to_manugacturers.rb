class AddIcmsToManugacturers < ActiveRecord::Migration[6.0]
  def change
    add_column :manufacturers, :ICMS, :integer
  end
end
