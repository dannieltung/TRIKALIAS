class AddDiscount2ToManugacturers < ActiveRecord::Migration[6.0]
  def change
    add_column :manufacturers, :discount_2, :string
  end
end
