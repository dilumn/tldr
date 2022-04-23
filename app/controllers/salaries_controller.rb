class SalariesController < ApplicationController
  def index
    @q = Salary.includes(:salary_votes).ransack(params[:q])
    @salaries = @q.result.page(params[:page])
  end

  def new
    @salary = Salary.new
  end

  def create
    salary = Salary.new(permitted_params)

    if salary.save
      flash[:success] = "Salary added."
      redirect_to techsalary_root_path
    else
      flash[:error] = salary.errors.full_messages.join(', ')
      redirect_to new_salary_path
    end
  end

  private

  def permitted_params
    params.require(:salary).permit!
  end
end
