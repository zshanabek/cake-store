class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :discount, default:0
      t.integer :category_id
      t.boolean :active, default:true
      
      t.timestamps
    end
  end
end
