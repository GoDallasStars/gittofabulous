require "rubygems"
require "watir-webdriver"

host_url = "http://www.google.com"
search_string = "jason daniels is a jerk face"
#images_total = 232
top_result = "jerk face"

b = Watir::Browser.new :chrome
puts "Beginning of test: Google search."
puts " Step 1: go to the test site: " + host_url
b.goto host_url
puts b.url
puts " Step 2: enter '" + search_string + "' in the search text field."
# "q" is the name of the Google search field
b.text_field(:name => "q").set search_string
#step no longer needed with google auto complete
#puts " Step 3: click the 'Google Search' button."
#b.button(:value => "Google Search").click
puts " Expected Result:"
puts "  A Google page with results should be shown. '" + top_result + "' should be high on the list."
puts " Actual Result:"
#puts b.text.include? top_result
if b.text.include? top_result
  puts "  Test Passed. Found the test string: '" + top_result + "'. Actual Results match Expected Results."
else
  puts "  Test Failed! Could not find: '" + top_result + "'."
end
b.close
puts "End of test: Google search."