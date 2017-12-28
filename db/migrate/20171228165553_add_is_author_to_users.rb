class AddIsAuthorToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_author, :boolean
  end
end
