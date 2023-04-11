require "open-uri"
require "nokogiri"

url = "https://www.bookdepository.com/search?searchTerm=comic%20books&search=Find+book"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search(".book-item .title a").each do |element|
  p element.text.strip
  p element.attribute('href').value
end
