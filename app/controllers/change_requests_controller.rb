class ChangeRequestsController < ApplicationController
  def new
    @change_request = ChangeRequest.new
  end

  def create
    change_request = ChangeRequest.new(permitted_params)

    if change_request.save
      flash[:success] = "Thanks for submitting the request, we will review it & do nessasary changes as soon as possible. If the changes doesn't appear within few days, give us a reminder here - https://github.com/dilumn/peggedplacetowork"
      redirect_to root_path
    else
      flash[:error] = change_request.errors.full_messages.join(', ')
      redirect_to new_change_request_path
    end
  end

  private

  def permitted_params
    params.require(:change_request).permit!
  end
end
