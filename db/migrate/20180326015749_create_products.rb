class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.bike :name
      t.cruiser :description
      t.cruiserbike.jpg :image_url

      t.timestamps
    end
  end
end
