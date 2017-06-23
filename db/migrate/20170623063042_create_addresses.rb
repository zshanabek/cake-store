class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :title
      t.string :city
      t.string :street
      t.string :home

      t.timestamps
    end
  end
end
