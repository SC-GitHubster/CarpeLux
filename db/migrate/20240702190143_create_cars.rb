class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :make
      t.string :description
      t.integer :year
      t.string :image_url

      t.timestamps
    end
  end
end
