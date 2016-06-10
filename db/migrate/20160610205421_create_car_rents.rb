class CreateCarRents < ActiveRecord::Migration[5.0]
  def change
    create_table :car_rents do |t|
      t.datetime :date_from
      t.datetime :date_to
      t.decimal :price
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :car, foreign_key: true

      t.timestamps
    end
  end
end
