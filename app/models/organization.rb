# frozen_string_literal: true

class Organization < ApplicationRecord
  include PeggedCurrencyEnum
  include ProportionEnum

  enum pegged_currency: PEGGED_CURRENCIES

  validates :name, uniqueness: true

  def remarks_display
    text = ''

    text += "<b>Initial salary pegging value</b> - #{pegging_value} #{pegged_currency}<br>" if pegging_value.present?
    text += "<b>Salary proportion</b> - #{proportion}<br>" if proportion.present?
    text += "<b>Additional remarks</b> - #{remarks}" if remarks.present?

    text
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[name pegged]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[pegged_currency]
  end
end
