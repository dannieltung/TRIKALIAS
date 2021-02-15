class AddCostsToCosts < ActiveRecord::Migration[6.0]
  def change
    add_column :costs, :simples, :float
    add_column :costs, :débito, :float
    add_column :costs, :crédito, :float
    add_column :costs, :parcelado, :float
  end
end
