class AddSpreadToCosts < ActiveRecord::Migration[6.0]
  def change
    add_column :costs, :spread, :float
  end
end
