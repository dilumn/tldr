# frozen_string_literal: true

class ChangeRequestsController < ApplicationController
  def new
    @change_request = ChangeRequest.new

    @no_proof_change_requests = ChangeRequest.where(status: 'not_enough_proof')
  end

  def create
    change_request = ChangeRequest.new(permitted_params)

    if change_request.save
      flash[:success] =
        "Thanks for submitting the request, we will review it & do nessasary changes. If the changes doesn't appear within few days, check change request page to see whether your request marked as not enough proof."
      redirect_to peggedplacetowork_root_path
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
