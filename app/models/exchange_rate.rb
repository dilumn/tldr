class ExchangeRate < ApplicationRecord
  include CurrencyEnum
  include PeggedCurrencyEnum

  enum from: PEGGED_CURRENCIES
  enum to: {
    LKR: 'LKR'
  }

  validates_uniqueness_of :from, scope: %i[to]

  def self.get_rate(from_iso_code, to_iso_code)
    rate = find_by(from: from_iso_code, to: to_iso_code)
    rate&.rate
  end
end
