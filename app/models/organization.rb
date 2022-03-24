class Organization < ApplicationRecord
  enum pegged_currency: {
    USD: 'USD',
    EURO: 'EURO',
    AUD: 'AUD',
    SGD: 'SGD',
    GBP: 'GBP',
    SDK: 'SDK',
    NZD: 'NZD',
    HKD: 'HKD',
    BTC: 'BTC'
  }

  validates :name, uniqueness: true
end
