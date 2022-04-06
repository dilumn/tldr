module MultiTenant
  class FetchTenant
    def self.call(request)
      "MultiTenant::#{Rails.env.capitalize}Tenants".constantize::TENANTS[request.host.to_sym]
    end
  end
end
