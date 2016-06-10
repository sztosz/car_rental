class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :pesel
      t.string :licence
      t.string :street
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
