# home page
Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.should have_content text
end

Then(/^I should see "([^"]*)" in the selector "([^"]*)"$/) do |text, selector|
  page.should have_selector(selector), content: text
end

Then(/^I should see "([^"]*)" in a link$/) do |text|
  page.should have_link text
end

# form
Given(/^I am on "([^"]*)"$/) do |path|
  visit path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I click "([^"]*)"$/) do |button|
  click_on(button)
end