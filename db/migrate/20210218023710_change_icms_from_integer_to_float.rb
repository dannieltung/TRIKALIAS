class ChangeIcmsFromIntegerToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :manufacturers, :ICMS, :float
  end
end
