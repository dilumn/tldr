# frozen_string_literal: true

class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: [:google_oauth2]

  ADMIN_ROLES = %w[readonly_admin operation_admin super_admin].freeze

  enum role: {
    normal_user: 'normal_user',
    readonly_admin: 'readonly_admin',
    operation_admin: 'operation_admin',
    super_admin: 'super_admin'
  }

  def self.from_google(email:)
    find_or_create_by(hashed_email: Digest::SHA512.hexdigest(email))
  end

  def admin_user?
    ADMIN_ROLES.include?(role)
  end
end
