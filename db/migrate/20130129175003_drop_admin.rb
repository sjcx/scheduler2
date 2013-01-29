class DropAdmin < ActiveRecord::Migration
  def up
    drop_table :admins
  end

  def down
  end
end
