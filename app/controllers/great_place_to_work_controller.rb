class GreatPlaceToWorkController < ApplicationController
  def index
    @organizations = Organization.where(great_place_to_work: true).order(:name)
  end
end
