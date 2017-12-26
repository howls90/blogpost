class AddHeaderToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :header, :text
  end
end
