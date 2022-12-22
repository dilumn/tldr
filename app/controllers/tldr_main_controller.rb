# frozen_string_literal: true

class TldrMainController < ApplicationController

  def index
    salaries = Salary.includes(:salary_votes).where(status: 'approved').group_by(&:designation)
    @grouped_salaries = salaries.sort_by do |_key, value|
      -value.size
    end.to_h
  end
end
