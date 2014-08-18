When(/^I visit the Nop Commerce Site$/) do
  visit '/'
end

Then(/^I expect to see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I click the "(.*?)" link$/) do |link|
  click_link link
end

Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I expect to be on the "?([^"]*)"? page$/) do |page|
  expect(find('.page-title')).to have_text(page)
end

When(/^I click the (.*) category$/) do |category|
  within '.block-category-navigation' do
    click_link category
  end
end