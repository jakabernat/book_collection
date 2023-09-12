# app/models/book.rb
class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :published, presence: true, if: :published_present?
    validates :price, presence: true, numericality: true
  
    private
  
    def published_present?
      Date.parse(published.to_s) rescue false
    end
  end
  