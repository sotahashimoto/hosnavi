class CreateConsultationTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :consultation_times do |t|
      t.integer :consultation_day_id
      t.integer :hospital_id
      t.integer :start_hour
      t.integer :start_minute
      t.integer :finish_hour
      t.integer :finish_minute
      t.timestamps
    end
  end
end
