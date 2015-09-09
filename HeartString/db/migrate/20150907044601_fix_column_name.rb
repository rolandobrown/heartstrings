class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :messages, :publish_on, :published_at
  end
end
