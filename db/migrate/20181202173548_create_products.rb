class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :description
      t.string :provider
      t.float :unit_cost

      t.timestamps
    end
  end
end
