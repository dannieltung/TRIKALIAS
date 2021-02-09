class CreatePriceLists < ActiveRecord::Migration[6.0]
  def change
    create_table :price_lists do |t|

      t.timestamps
    end
  end
end
