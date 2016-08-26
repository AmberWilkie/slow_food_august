Then(/^I should be on the menu page$/) do
  visit '/menu'
end

Then(/^I should see (\d+)$/) do |num|
  expect(page).to have_content(num)
end
