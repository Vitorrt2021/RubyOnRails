class AddSecurePassword < ActiveRecord::Migration[7.0]
  def change
    add_column :users , :password_diges, :string
    remove_column :users , :password
  end
end
