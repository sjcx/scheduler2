class DropModels < ActiveRecord::Migration
  def up
    drop_table :models
  end

  def down
  end
end
