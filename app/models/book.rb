# frozen_string_literal: true

class Book < ApplicationRecord
  self.per_page = 20

  has_many :book_copies
  belongs_to :author

  validates :title, :author, presence: true
end
