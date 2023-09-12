require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      book = Book.new(
        title: 'Sample Book',
        author: 'Author Name',
        price: 19.99,
        published: Date.today
      )
      expect(book).to be_valid
    end

    it 'is not valid without a title' do
      book = Book.new(title: nil)
      expect(book).to_not be_valid
    end

    it 'is not valid without an author' do
      book = Book.new(author: nil)
      expect(book).to_not be_valid
    end

    it 'is not valid without a price' do
      book = Book.new(price: nil)
      expect(book).to_not be_valid
    end

    it 'is not valid without a published date' do
      book = Book.new(published: nil)
      expect(book).to_not be_valid
    end
  end
end
