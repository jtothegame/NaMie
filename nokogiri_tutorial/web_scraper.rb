require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'
require 'csv'

# this is how we request the page we're going to scrape
page = HTTParty.get('https://www.behindthename.com/name/aaliyah')

# this is where we transform our HTTP reponse into a nokogiri object
parse_page = Nokogiri::HTML(page)

# this is an empty array where we will store all the BehindTheName names
names_array = []

Pry.start(binding)
