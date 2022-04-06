class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_google(email:, full_name:, uid:, avatar_url:)
    user = find_by(email: email)

    return unless user

    user.update(full_name: full_name, uid: uid, avatar_url: avatar_url)
    user
  end
end
