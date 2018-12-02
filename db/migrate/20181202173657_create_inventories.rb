class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.references :product, foreign_key: true
      t.integer :security_stock
      t.integer :stock

      t.timestamps
    end
  end
end
