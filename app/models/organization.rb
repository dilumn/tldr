class Organization < ApplicationRecord
  include CurrencyEnum

  validates :name, uniqueness: true
end
