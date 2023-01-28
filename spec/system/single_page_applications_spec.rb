require 'rails_helper'

RSpec.describe "SinglePageApplications", type: :system do
  before do
    driven_by(:rack_test)
  end

  before do
    visit quotes_path
  end

  context 'Create a new quote' do
    it 'show quotes index page' do
      expect(page).to have_selector('h1', text: 'Quotes')
    end

    it 'show new quote page' do
      click_on 'New Quote'
      expect(page).to have_selector('h1', text: 'New Quote')
    end

    it 'create a new quote' do
      visit new_quote_path
      fill_in 'Name', with: 'Capybara quote'
      click_on 'Create Quote'
      expect(page).to have_selector('h1', text: 'Quotes')
      expect(page).to have_text('Capybara quote')
    end
  end

  context 'Show a quote' do
    let(:quote) { FactoryBot.create(:quote) }

    it 'show a quote' do
      visit quote_path(quote)
      expect(page).to have_selector('h1', text: quote.name)
    end
  end

  context 'Update a quote' do
    let(:quote) { FactoryBot.create(:quote) }

    it 'edit a quote' do
      expect(page).to have_selector('h1', text: 'Quotes')

      click_on 'Edit'
      expect(page).to have_selector('h1', text: 'Edit Quote')

      fill_in 'Name', with: 'Capybara quote'
      click_on 'Update Quote'

      expect(page).to have_selector('h1', text: 'Quotes')
      expect(page).to have_text('Capybara quote')
    end
  end

  context 'Delete a quote' do
    let(:quote) { FactoryBot.create(:quote, name: 'Capybara quote 2') }

    it 'destroy a quote' do
      expect(page).to have_selector('h1', text: 'Quotes')

      click_on 'Delete'
      expect(page).to_not have_content('Capybara quote 2')
    end
  end
end
