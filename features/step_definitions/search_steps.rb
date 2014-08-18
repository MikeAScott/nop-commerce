When(/^I search for "(.*?)"$/) do |item|
  fill_in 'small-searchterms', :with=>item
  click_button 'Search'
end

Then(/^I expect to see a list of "(.*?)"$/) do |arg1|
  expect(all('div.item-box').count).to be > 0
end


Then(/^I expect to see a message "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
end