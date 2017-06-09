class CreateAgencies < ActiveRecord::Migration[5.0]
  def change
    create_table :agencies do |t|
      t.string :code
      t.string :logo
      t.string :name
      t.string :address
      t.string :phone
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps

    end
  end
end
