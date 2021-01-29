class CreateSchedulesAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules_appointments, id: false do |t|
      t.integer :schedule_id
      t.integer :appointment_id

      t.timestamps
    end

    add_index :schedules_appointments, :schedule_id
    add_index :schedules_appointments, :appointment_id
  end
end
