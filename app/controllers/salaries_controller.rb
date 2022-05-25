class SalariesController < ApplicationController
  before_action :authenticate_user!, only: %i[vote_accurate vote_fake]

  def index
    @q = Salary.includes(:salary_votes).where(status: 'approved').order(currency: :desc, year: :desc).ransack(params[:q])
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

  def vote_accurate
    add_vote(:accurate)
  end

  def vote_fake
    add_vote(:fake)
  end

  private

  def permitted_params
    params.require(:salary).permit!
  end

  def selected_salary
    @selected_salary ||= Salary.find_by(id: params[:id])
  end

  def add_vote(vote_type)
    if vote(vote_type).persisted?
      flash[:success] = "Thank you for the vote."
      redirect_to techsalary_root_path
    else
      flash[:error] = "You have already voted for this salary. Cannot vote twice"
      redirect_to techsalary_root_path
    end
  end

  def vote(vote_type)
    SalaryVote.create(user: current_user, salary: selected_salary, vote_type: vote_type)
  end
end
