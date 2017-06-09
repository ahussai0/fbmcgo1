class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.time :appt_time
      t.date :appt_date
      t.integer :lead_id
      t.integer :agent_id
      t.string :outcome
      t.text :notes
      t.integer :agency_id

      t.timestamps

    end
  end
end
