class AddOmniauthToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :provider, :string
    add_column :members, :uid, :string
    add_column :members, :token, :string
    add_column :members, :meta, :string
  end
end
