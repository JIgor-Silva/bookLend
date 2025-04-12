class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum :status, { available: 0, rented: 1, returned: 2 }

  after_create :mark_book_as_rented
  after_update :mark_book_as_returned, if: :returned?

  private

  def mark_book_as_rented
    book.update!(rented: true)
  end

  def mark_book_as_returned
    book.update!(rented: false)
  end

  def returned?
    return_date.present?
  end
end
