# frozen_string_literal: true

module MultiTenant
  class DevelopmentTenants
    TENANTS = {
      localhost: 'techsalary',
      peggedplacetowork: 'peggedplacetowork',
      techsalary: 'techsalary'
    }.freeze
  end
end
