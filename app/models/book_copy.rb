# frozen_string_literal: true

class BookCopy < ApplicationRecord
  belongs_to :book
  belongs_to :user, optional: true

  validates :isbn, :published, :format, :book, presence: true

  HARDBACK = 1
  PAPERBACK = 2
  EBOOK = 3

  enum format: { hardback: HARDBACK, paperback: PAPERBACK, ebook: EBOOK }

  def borrow(borrower)
    return false if user.present?

    self.user = borrower
    save
  end

  def return_book(_borrower)
    return false unless user.present?

    self.user = nil
    save
  end
end
