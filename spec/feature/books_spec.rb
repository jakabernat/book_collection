require 'rails_helper'

RSpec.describe 'Books', type: :feature do
  it 'creates a new book' do
    visit new_book_path
    fill_in 'Title', with: 'Sample Book'
    fill_in 'Author', with: 'Author Name'
    fill_in 'Price', with: '19.99'

 

    click_button 'Create Book'

    expect(page).to have_text('Book was successfully created.')
  end
end
