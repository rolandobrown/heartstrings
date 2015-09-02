class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.datetime :publish_on
      t.string :subject
      t.text :body
      t.boolean :draft
      t.boolean :deletable
      t.datetime :publish_on
      t.boolean :share_with_family
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
