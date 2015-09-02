class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :subject
      t.text :body
      t.datetime :publish_on
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
