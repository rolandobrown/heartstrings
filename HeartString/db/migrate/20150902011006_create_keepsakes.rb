class CreateKeepsakes < ActiveRecord::Migration
  def change
    create_table :keepsakes do |t|
      t.string :title
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
