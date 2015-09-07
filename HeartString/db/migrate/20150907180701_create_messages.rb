class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.datetime :published_at
      t.boolean :read
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
