# frozen_string_literal: true

module ProportionEnum
  extend ActiveSupport::Concern

  included do
    enum proportion: {
      fully: 'fully',
      partially: 'partially'
    }
  end
end
