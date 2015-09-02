class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :subject
      t.text :body
      t.boolean :draft
      t.boolean :deletable
      t.datetime :publish_on
      t.boolean :share_with_family

      t.timestamps null: false
    end
  end
end
