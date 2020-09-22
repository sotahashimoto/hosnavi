class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :postcode
      t.string :address
      t.string :image_id
      t.float :latitude
      t.float :longitude
      t.text :feature
      t.text :short_message
      t.text :notices
      t.string :phone_number
      t.timestamps
    end
  end
end
