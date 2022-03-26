class PeggedPlaceToWorksController < ApplicationController
  def index
    @q = Organization.ransack(params[:q])
    @organizations = @q.result.where(pegged: true).order(:name).page(params[:page])
  end
end
