class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :color
      t.string :disposition
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
