class SalariesController < ApplicationController
  def index
    @q = Salary.ransack(params[:q])
    @tech_salaries = @q.result.page(params[:page])
  end

  def new
    @salary = Salary.new
  end

  def create
    salary = Salary.new(permitted_params)

    if salary.save
      flash[:success] = "Thanks for submitting the request, we will review it & do nessasary changes. If the changes doesn't appear within few days, check change request page to see whether your request marked as not enough proof."
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
