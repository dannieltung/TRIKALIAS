class CreateSkus < ActiveRecord::Migration[6.0]
  def change
    create_table :skus do |t|

      t.timestamps
    end
  end
end
