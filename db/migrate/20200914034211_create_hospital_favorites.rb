class CreateHospitalFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :hospital_favorites do |t|
      t.integer :member_id
      t.integer :hospital_id
      t.timestamps
    end
  end
end
