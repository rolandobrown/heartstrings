class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.string :status
      t.boolean :read
      t.datetime :published_at
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps null: false
    end
  end
end
