# frozen_string_literal: true

module MultiTenant
  class FetchTenant
    def self.call(request)
      "MultiTenant::#{Rails.env.capitalize}Tenants".constantize::TENANTS[request.host.to_sym] || 'tldr'
    end
  end
end
