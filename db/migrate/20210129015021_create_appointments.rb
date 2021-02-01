class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :start
      t.string :end
      t.string :url
      t.string :backgroundColor
      t.string :textColor
      t.string :borderColor
      t.integer :schedule_id
      t.timestamps
    end
  end
end
