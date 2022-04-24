class SalaryVote < ApplicationRecord
  enum vote_type: [ :accurate, :fake ]

  belongs_to :salary
  belongs_to :user

  validates_uniqueness_of :salary, scope: :user
end
