class ChangeDiscountsTwoThruFourFromStringToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :manufacturers, :discount_2, :float, using: 'discount_2::float'
    change_column :manufacturers, :discount_3, :float, using: 'discount_3::float'
    change_column :manufacturers, :discount_4, :float, using: 'discount_4::float'
  end
end
