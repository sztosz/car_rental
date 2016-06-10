class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.belongs_to :car_model, foreign_key: true
      t.string :plate
      t.decimal :price

      t.timestamps
    end
  end
end
