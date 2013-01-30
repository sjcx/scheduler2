class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :tutor_id
      t.date :date
      t.timestamps
    end
  end
end
