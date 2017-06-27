class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.boolean :active, default: true
      t.text :description
      t.integer :parent_id

      t.timestamps
    end
  end
end
