class ApplicationController < ActionController::Base

  layout :tenant_layout

  def tenant_layout
    "tenants/#{tenant}"
  end

  def tenant
    ::MultiTenant::FetchTenant.call(request) || 'peggedplacetowork'
  end
end
