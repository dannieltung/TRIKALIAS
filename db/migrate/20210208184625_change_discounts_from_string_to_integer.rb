class ChangeDiscountsFromStringToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :manufacturers, :discount_1, :float, using: 'discount_1::float'
  end
end
