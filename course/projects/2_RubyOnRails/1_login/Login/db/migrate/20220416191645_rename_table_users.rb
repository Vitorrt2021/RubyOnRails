class RenameTableUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table :table_users, :users
  end
end
