class AddPackageToCosts < ActiveRecord::Migration[6.0]
  def change
    add_column :costs, :package, :float
  end
end
