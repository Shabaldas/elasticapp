class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :sku
      t.string :title
      t.string :nickname
      t.float :price, recision: 8, scale: 2, default: '0.0'
      t.integer :inventory, default: 0
      t.float :fulfilment_free, recision: 8, scale: 2, default: '0.0'
      t.float :unit_cost, recision: 8, scale: 2, default: '0.0'

      t.timestamps
    end
  end
end
