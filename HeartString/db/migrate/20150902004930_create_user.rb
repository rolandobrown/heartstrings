class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :crypted_password
      t.string :perishable_token
      t.string :persistence_token
      t.string :password_digest
      t.string :name
      t.datetime :dob
      t.text :bio
      t.text :role
      t.references :family, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
