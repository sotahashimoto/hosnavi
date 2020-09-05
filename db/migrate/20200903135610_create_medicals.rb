class CreateMedicals < ActiveRecord::Migration[5.2]
  def change
    create_table :medicals do |t|
      t.integer :hospital_id
      t.integer :medical_department_id
      t.timestamps
    end
  end
end
