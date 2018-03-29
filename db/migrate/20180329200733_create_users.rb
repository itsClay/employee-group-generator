class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :session_token
      t.string :password_digest

      t.timestamps
    end
    # enforce uniqueness at lowest db level
    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true
  end
end
