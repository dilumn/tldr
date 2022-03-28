class ChangeRequest < ApplicationRecord
  include CurrencyEnum
  include ProportionEnum

  enum request_type: {
    change_existing_details: 'change_existing_details',
    add_new_data: 'add_new_data'
  }

  validates :request_type, :company_name, :pegged_currency, presence: true
end
