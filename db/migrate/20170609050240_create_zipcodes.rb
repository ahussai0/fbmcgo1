class CreateZipcodes < ActiveRecord::Migration[5.0]
  def change
    create_table :zipcodes do |t|
      t.integer :zipcode
      t.integer :agency_id
      t.string :county
      t.string :state
      t.integer :agent_id

      t.timestamps

    end
  end
end
