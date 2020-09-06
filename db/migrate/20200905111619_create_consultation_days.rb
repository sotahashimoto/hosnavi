class CreateConsultationDays < ActiveRecord::Migration[5.2]
  def change
    create_table :consultation_days do |t|
      t.boolean "is_sunday", default: true
      t.boolean "is_monday", default: true
      t.boolean "is_tuesday", default: true
      t.boolean "is_wednesday", default: true
      t.boolean "is_thursday", default: true
      t.boolean "is_friday", default: true
      t.boolean "is_saturday", default: true
      t.timestamps
    end
  end
end
