class RemoveActivAdmin < ActiveRecord::Migration
  def up
    drop_table "active_admin_comments"
    drop_table "admin_users"
  end
end
