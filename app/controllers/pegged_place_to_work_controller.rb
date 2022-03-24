class PeggedPlaceToWorkController < ApplicationController
  def index
    @organizations = Organization.where(pegged: true).order(:name)
  end
end
