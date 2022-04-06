class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: [:google_oauth2]

  enum role: {
    normal_user: 'normal_user',
    readonly_admin: 'readonly_admin',
    operation_admin: 'operation_admin',
    super_admin: 'super_admin'
  }

  def self.from_google(email:, full_name:, uid:, avatar_url:)
    user = find_by(email: email)

    return unless user

    user.update(full_name: full_name, uid: uid, avatar_url: avatar_url)
    user
  end
end
