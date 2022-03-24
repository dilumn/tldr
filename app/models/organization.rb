class Organization < ApplicationRecord
  enum pegged_currency: {
    USD: 'USD',
    EURO: 'EURO',
    AUD: 'AUD',
    SGD: 'SGD'
  }

  validates :name, uniqueness: true
end
