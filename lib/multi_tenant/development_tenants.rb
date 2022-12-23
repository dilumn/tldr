# frozen_string_literal: true

module MultiTenant
  class DevelopmentTenants
    TENANTS = {
      'localhost': 'tldr',
      'tldr': 'tldr',
      'peggedplacetowork': 'peggedplacetowork',
      'peggedplacetowork.tldr': 'peggedplacetowork',
      'techsalary': 'techsalary',
      'techsalary.tldr': 'techsalary'
    }.freeze

    REDIRECT_LEGACY_MAPPING = {
    }.freeze
  end
end
