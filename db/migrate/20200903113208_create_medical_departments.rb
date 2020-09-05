class CreateMedicalDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_departments do |t|
      t.string :name
      t.timestamps
    end
  end
end
