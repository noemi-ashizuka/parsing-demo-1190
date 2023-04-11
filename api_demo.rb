require "json"
require "open-uri"

puts "Write a character name"
print "> "
input = gets.chomp

url = "https://swapi.dev/api/people/?search=#{input}"

serialized_character = URI.open(url).read
character_hash = JSON.parse(serialized_character)
character = character_hash["results"][0]

puts "#{character["name"]} has #{character["hair_color"]} hair and #{character["eye_color"]} eyes"
