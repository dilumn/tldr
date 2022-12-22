# frozen_string_literal: true

module MultiTenant
  class ProductionTenants
    TENANTS = {
      'tldr.lk': 'tldr',
      'peggedplacetowork.lk': 'peggedplacetowork',
      'peggedplacetowork.tldr.lk': 'peggedplacetowork',
      'techsalary.lk': 'techsalary',
      'techsalary.tldr.lk': 'techsalary'
    }.freeze
  end
end
