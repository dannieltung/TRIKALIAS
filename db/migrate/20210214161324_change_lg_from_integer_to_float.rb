class ChangeLgFromIntegerToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :manufacturers, :LG, :float
  end
end
