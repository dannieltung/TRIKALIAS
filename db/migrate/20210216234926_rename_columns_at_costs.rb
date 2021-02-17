class RenameColumnsAtCosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :costs, :débito, :debito
    rename_column :costs, :crédito, :credito
  end
end
