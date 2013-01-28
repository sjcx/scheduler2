class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :program, :string
    add_column :users, :admin, :boolean
  end
end
