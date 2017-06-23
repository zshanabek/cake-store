class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.boolean :available, default: true
      t.attachment :image, default: "missing.png"
      t.integer :discount, default: 0

      t.timestamps
    end
  end
end
