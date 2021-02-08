class AddDiscount4ToManugacturers < ActiveRecord::Migration[6.0]
  def change
    add_column :manufacturers, :discount_4, :string
  end
end
