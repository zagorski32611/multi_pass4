class CreateUserCredentials < ActiveRecord::Migration[5.1]
  def change
    create_table :user_credentials do |t|

      t.timestamps
    end
  end
end
