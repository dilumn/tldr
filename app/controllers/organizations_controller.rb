class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all.order(:name)
  end
end
