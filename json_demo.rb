require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

serialized_beatles = File.read(filepath)

beatles = JSON.parse(serialized_beatles)

# Parsing JSON

beatles["beatles"].each do |beatle|
  p beatle["first_name"]
end


# Storing JSON

band = {
  title: "The Wagoners",
  wagoners: [
    {
      first_name: "Ryo",
      last_name: "Tamiya",
      instrument: "Organ"
    },
    {
      first_name: "Fumi",
      last_name: "Nozawa",
      instrument: "Xylophone, Bongo"
    }
  ]
}

File.open(filepath, "wb") do |file|
  file.write(JSON.generate(band))
end
