Given(/^I am on the homepage$/) do 
	visit root_url
end

When(/^I follow "New Project"$/) do 
	 page.should have_link('New Project', href: new_project_path)
	 visit new_project_path  
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |name, text|
	fill_in name, with: text
end

When(/^I press "(.*?)"$/) do |button|
	click_button button
end

Then(/^I should see "(.*?)"$/) do |notice|
	page.should have_content(notice)
end


# When (/^I press "Create Project"$/) do
# 	pending
# end
# Then (/^I should see "Project has not been created."$/) do
# 	pending
# end
# Then (/^I should see "Name can't be blank"$/) do
# 	pending
# end