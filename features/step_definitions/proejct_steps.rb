Given(/^there is a project called "(.*?)"$/) do |name|
	#FactoryGirl.create(:project, :name => name)
	Project.create(:name => name)
end

When(/^I follow "TextMate 2"$/) do 
	page.should have_link('TextMate 2') 
end


Then(/^I should be on the project page for "TextMate"$/) do
	page.should have_content("TextMate")
end