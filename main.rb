require_relative 'lib/dpreview/scraper'

# Please pick year from https://www.dpreview.com/products/cameras/all?view=list
year = 2010

scraper = Dpreview::Scraper.new(year)
scraper.scrape_amazon_reviews do |size, index|
  puts "#{index + 1} - #{size}"
end
scraper.save

`git add lib/data`
`git commit -m "Update data #{year}"`
`git push`