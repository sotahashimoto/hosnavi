class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :member_id
      t.integer :hospital_id
      t.integer :score
      t.text :content
      t.timestamps
    end
  end
end
