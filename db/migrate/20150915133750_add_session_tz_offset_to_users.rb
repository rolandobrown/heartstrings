class AddSessionTzOffsetToUsers < ActiveRecord::Migration
  def change
    add_column :users, :session_tz_offset, :string
  end
end
