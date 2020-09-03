class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :postcode
      t.string :address
      t.text :feature
      t.timestamps
    end
  end
end
