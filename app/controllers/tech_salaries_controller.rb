class TechSalariesController < ApplicationController
  def index
    @q = Salary.ransack(params[:q])
    @tech_salaries = @q.result.page(params[:page])
  end
end
