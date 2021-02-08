class AddDiscount3ToManugacturers < ActiveRecord::Migration[6.0]
  def change
    add_column :manufacturers, :discount_3, :string
  end
end
