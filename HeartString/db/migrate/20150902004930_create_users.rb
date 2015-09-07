class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.datetime :dob
      t.text :bio
      t.text :role
      t.references :family, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
