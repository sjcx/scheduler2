class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
