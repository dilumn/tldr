# frozen_string_literal: true

class ApplicationController < ActionController::Base

  before_action :legacy_redirect

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.peggedplacetowork_root_path, alert: exception.message
  end

  layout :tenant_layout

  def tenant_layout
    "#{tenant}/application"
  end

  def tenant
    return 'rails_admin' if request.path.include?('admin')

    ::MultiTenant::FetchTenant.call(request)
  end

  private

  def legacy_redirect
    return unless legacy_domain.present?

    flash[:alert] = "Redirecting to our new home"
    redirect_to host: "https://#{legacy_domain}?allow_other_host=true", allow_other_host: true
  end

  def legacy_domain
    "MultiTenant::#{Rails.env.capitalize}Tenants".constantize::REDIRECT_LEGACY_MAPPING[request.host.to_sym]
  end
end
