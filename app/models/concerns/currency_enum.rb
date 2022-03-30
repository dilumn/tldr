module CurrencyEnum
  extend ActiveSupport::Concern

  included do
    enum pegged_currency: {
      USD: 'USD',
      EURO: 'EURO',
      AUD: 'AUD',
      SGD: 'SGD',
      GBP: 'GBP',
      SEK: 'SEK',
      NZD: 'NZD',
      HKD: 'HKD',
      BTC: 'BTC',
      NOK: 'NOK'
    }
  end
end