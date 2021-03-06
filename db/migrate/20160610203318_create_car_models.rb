class CreateCarModels < ActiveRecord::Migration[5.0]
  def change
    create_table :car_models do |t|
      t.string :name
      t.belongs_to :car_manufacturer, foreign_key: true

      t.timestamps
    end
  end
end
