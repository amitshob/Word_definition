require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add a word path', {:type => :feature}) do
	it('adds a word to the word list on the home page') do
		visit('/')
		fill_in('new_word', :with => 'abdicate')
		click_button('Add Word')
		expect(page).to have_content('abdicate')
	end
end

describe('the add definitions path', {:type => :feature}) do
	it("adds a definition on a word's page") do
		visit('/')
		fill_in('new_word', :with => 'ephemeral')
		click_button('Add Word')
		click_link('ephemeral')
		fill_in('type', :with => 'adjective')
		fill_in('new_definition', :with => 'fleeting')
		click_button('Add Definition')
		expect(page).to have_content('fleeting')
	end
end
