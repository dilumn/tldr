# frozen_string_literal: true

class SalaryVote < ApplicationRecord
  enum vote_type: { accurate: 0, fake: 1 }

  belongs_to :salary
  belongs_to :user

  validates :salary, uniqueness: { scope: :user }
end
