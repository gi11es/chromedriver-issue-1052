Given /^I am on the home page for bananas$/ do
  visit('/ncr#q=bananas')
end

Given /^I have entered "([^"]*)" into the "([^"]*)" field$/ do |text, field|
  fill_in field, :with => text
end

Given /^I press next$/ do
  page.find('#pnnext .gbil').click
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end


