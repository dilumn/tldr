# frozen_string_literal: true

class GreatPlaceToWorksController < ApplicationController
  def index
    @q = Organization.ransack(params[:q])
    @organizations = @q.result.where(great_place_to_work: true).order(:name).page(params[:page])
  end
end
