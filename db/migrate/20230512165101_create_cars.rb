class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.text :description
      t.string :color
      t.integer :mileage
      t.integer :price
      t.string :url_image

      t.timestamps
    end
  end
end
