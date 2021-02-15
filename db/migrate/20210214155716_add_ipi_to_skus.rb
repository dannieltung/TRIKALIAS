class AddIpiToSkus < ActiveRecord::Migration[6.0]
  def change
    add_column :skus, :ipi, :float
  end
end
