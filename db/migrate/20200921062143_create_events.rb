class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.date :start_time
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
