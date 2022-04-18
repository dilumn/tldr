class Technology < ApplicationRecord
  validates :name, uniqueness: true

  enum status: {
    pending: 'pending',
    approved: 'approved',
    declined: 'declined'
  }
end
