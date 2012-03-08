require "rubygems"
require "watir-webdriver"

browser = Watir::Browser.new :ff
browser.goto "http://www.google.com"
puts browser.url
browser.a(:text => "Images").flash
browser.a(:text => "Images").click
browser.text_field(:name => "q").set "jason daniels is a jerk face"
browser.button(:value => "Search Images").click
puts browser.images.size
browser.close