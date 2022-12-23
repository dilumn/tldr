# frozen_string_literal: true

module MultiTenant
  class ProductionTenants
    TENANTS = {
      'tldr.lk': 'tldr',
      'peggedplacetowork.lk': 'peggedplacetowork',
      'peggedplacetowork.tldr.lk': 'peggedplacetowork',
      'techsalary.lk': 'techsalary',
      'techsalary.tldr.lk': 'techsalary',
      'thetax.tldr.lk': 'thetax'
    }.freeze

    REDIRECT_LEGACY_MAPPING = {
      'peggedplacetowork.lk': 'peggedplacetowork.tldr.lk',
      'techsalary.lk': 'techsalary.tldr.lk'
    }.freeze
  end
end
