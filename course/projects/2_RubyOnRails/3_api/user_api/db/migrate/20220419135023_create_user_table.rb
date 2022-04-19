class CreateUserTable < ActiveRecord::Migration[7.0]
  def change
    create_table :user do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_diges
      t.string :email

      t.timestamps
    end
  end
end
