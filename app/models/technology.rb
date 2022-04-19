class Technology < ApplicationRecord
  enum status: {
    pending: 'pending',
    approved: 'approved',
    declined: 'declined'
  }

  has_many :salaries_technologies
  has_many :salaries, through: :salaries_technologies

  validates :name, uniqueness: true
end
