class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, alert: exception.message
  end

  layout :tenant_layout

  def tenant_layout
    "#{tenant}/application"
  end

  def tenant
    return 'rails_admin' if request.path.include?('admin')

    ::MultiTenant::FetchTenant.call(request)
  end
end
