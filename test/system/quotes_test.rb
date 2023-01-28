require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase

  setup do
    @quote = quotes(:first)
  end

  test 'Creating a new quote' do
    visit quotes_path
    assert_selector 'h1', text: 'Quotes'

    click_on 'New Quote'
    assert_selector 'h1', text: 'New Quote'

    fill_in 'Name', with: 'Capybara quote'
    click_on 'Create Quote'

    assert_selector 'h1', text: 'Quotes'
    assert_text 'Capybara quote'
  end

  test 'Showing a quote' do
    visit quotes_path
    click_on @quote.name

    assert_selector 'h1', text: @quote.name
  end

  test 'Updating a quote' do
    visit quotes_path
    assert_selector 'h1', text: 'Quotes'

    click_on 'Edit', match: :first
    assert_selector 'h1', text: 'Edit Quote'

    fill_in 'Name', with: 'Update quote'
    click_on 'Update Quote'

    assert_selector 'h1', text: 'Quotes'
    assert_text 'Update quote'
  end

  test 'Destroying a quote' do
    visit quotes_path
    assert_selector 'h1', text: 'Quotes'

    click_on 'Delete', match: :first
    assert_no_text @quote.name
  end
end
