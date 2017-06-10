namespace :slurp do
  desc "TODO"
  task leadcsv: :environment do


    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "leadsfile.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Lead.new
      t.id = row["id"]
      t.firstname = row["firstname"]
      t.lastname = row["lastname"]
      t.address = row["address"]
      t.city = row["city"]
      t.state = row["state"]
      t.zip = row["zip"]
      t.pdf = row["pdf"]
      t.agent_id = row["agent_id"]
      t.hphone = row["hphone"]
      t.dob = row["dob"]
      t.agency_id = row["agency_id"]
      t.batchno = row["batchno"]
      t.recno = row["recno"]
      t.dw_agn = row["dw_agn"]
      t.save
      puts "#{t.batchno}-#{t.recno} saved"
    end

    puts "There are now #{Lead.count} rows in the Leads table"

  end

end
