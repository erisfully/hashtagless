class AddColumnsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :twitter_token
      t.string :twitter_secret
    end
  end
end
