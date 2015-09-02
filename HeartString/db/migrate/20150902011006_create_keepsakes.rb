class CreateKeepsakes < ActiveRecord::Migration
  def change
    create_table :keepsakes do |t|
      t.string :name
      t.text :description
      t.references :loved_one, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
