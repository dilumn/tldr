class UserColumnsRemove < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :full_name, :string
    remove_column :users, :avatar_url, :string
    remove_column :users, :uid, :string

    rename_column :users, :email, :hashed_email
  end
end
