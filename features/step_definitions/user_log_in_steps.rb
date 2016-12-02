Given(/^I am existing user$/) do
	visit login_path
	
 end

When(/^I visit log in page$/) do
	visit login_path
    fill_in 'Email', with: 'my@email.com'
	fill_in 'Password', with: 'qwerty'
	click_button 'Log in'
end

And(/^I fill in correct information$/) do
  visit login_url

    fill_in 'Email', with: 'my@email.com'
	fill_in 'Password', with: 'qwerty'
	click_button 'Log in'
end
Then(/^I can log in$/) do
 expect(page).to have_content('Logged in')

end


Given(/^am a logged in users$/) do
	visit login_url
    fill_in 'Email', with: 'my@email.com'
	fill_in 'Password', with: 'qwerty'
	click_button 'Log in'
  
end

Then(/^I can log out$/) do
   visit root_url
end
