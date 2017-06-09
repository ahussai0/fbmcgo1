class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :status
      t.string :premium
      t.string :pdf
      t.integer :agent_id
      t.string :hphone
      t.string :wphone
      t.string :cphone
      t.string :dob
      t.string :sdob
      t.boolean :smoker
      t.boolean :spousesmoke
      t.string :email
      t.text :notes
      t.string :occupation
      t.string :policy
      t.integer :agency_id
      t.integer :bullet1
      t.integer :bullet2
      t.integer :bullet3
      t.integer :bullet4
      t.integer :bullet5
      t.integer :bullet6
      t.integer :bullet7
      t.integer :mortamt
      t.integer :batchno
      t.integer :recno
      t.string :dw_agn

      t.timestamps

    end
  end
end
