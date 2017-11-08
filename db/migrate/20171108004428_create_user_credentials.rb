class CreateUserCredentials < ActiveRecord::Migration[5.1]
  def change
    create_table :user_credentials do |t|
      t.string :site
      t.string :username
      t.string :password
      t.string :tag
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :user_credentails, [:user_id, :created_at]
  end
end
