# frozen_string_literal: true

class BookCopy < ApplicationRecord
  extend Enumerize

  belongs_to :book
  belongs_to :user, optional: true

  validates :isbn, :published, :format, :book, presence: true

  HARDBACK = 1
  PAPERBACK = 2
  EBOOK = 3

  enumerize :ingenuity, in: { hardback: HARDBACK, paperback: PAPERBACK, ebook: EBOOK }

  def borrow(borrower)
    return false if user.present?

    self.user = borrower
    save
  end

  def return_book(borrower)
    return false unless user.present?

    self.user = nil
    save
  end
end
