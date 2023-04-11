require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# Read from a CSV file (parsing)
CSV.foreach(filepath, headers: :first_row) do |row|
  # p row
  # no headers: :first_row option => we get arrays
  # puts "#{row[0]} #{row[1]} plays #{row[2]}"
  # with headers: :first_row option => we get csv object (like a hash)
  p "#{row["First Name"]} #{row["Last Name"]} plays #{row["Instrument"]}"
end

# Store data in a CSV file

new_filepath = "data/new_beatles.csv"

CSV.open(new_filepath, "wb") do |csv|
  csv << ["First Name","Last Name","Instrument"]
  csv << ["Ryo", "Tamiya", "Organ"]
  csv << ["Fumi", "Nozawa", "Bongo, Xylophone"]
end

# [["First Name","Last Name","Instrument"],["John","Lennon","Guitar"][...]]
