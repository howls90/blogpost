class AddDescToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :github, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :google, :string
  end
end
