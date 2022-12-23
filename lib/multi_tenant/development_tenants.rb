# frozen_string_literal: true

module MultiTenant
  class DevelopmentTenants
    TENANTS = {
      'localhost': 'tldr',
      'tldr': 'tldr',
      'peggedplacetowork': 'peggedplacetowork',
      'peggedplacetowork.tldr': 'peggedplacetowork',
      'techsalary': 'techsalary',
      'techsalary.tldr': 'techsalary',
      'thetax.tldr': 'thetax'
    }.freeze

    REDIRECT_LEGACY_MAPPING = {
      'peggedplacetowork': 'peggedplacetowork.tldr',
      'techsalary': 'techsalary.tldr'
    }.freeze
  end
end
