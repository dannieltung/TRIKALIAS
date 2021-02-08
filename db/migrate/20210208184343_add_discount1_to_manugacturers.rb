class AddDiscount1ToManugacturers < ActiveRecord::Migration[6.0]
  def change
    add_column :manufacturers, :discount_1, :string
  end
end
