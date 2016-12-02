Given(/^I am existing user$/) do
	visit login_path
	fill_in 'Email', with: 'my@email.com'
	fill_in 'Password', with: 'qwerty'
	click_button 'Log in'
 end

When(/^I visit log in page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in correct information$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can log in$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
