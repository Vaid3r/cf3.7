class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :color
      t.decimal :price

      t.timestamps
    end
  end
end
