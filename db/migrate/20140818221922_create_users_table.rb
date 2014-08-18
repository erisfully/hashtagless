class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users_tables do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

    t.timestamps
    end
  end
end
