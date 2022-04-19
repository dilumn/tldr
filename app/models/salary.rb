class Salary < ApplicationRecord
  enum currency: {
    LKR: 'LKR',
    USD: 'USD',
    EURO: 'EURO',
    AUD: 'AUD',
    SGD: 'SGD',
    GBP: 'GBP',
    SEK: 'SEK',
    NZD: 'NZD',
    HKD: 'HKD',
    BTC: 'BTC',
    NOK: 'NOK',
    CAD: 'CAD',
    AED: 'AED'
  }

  has_many :salaries_technologies
  has_many :technologies, through: :salaries_technologies
end
