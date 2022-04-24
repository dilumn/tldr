class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    user = User.from_google(**from_google_params)

    if user.present?
      sign_out_all_scopes
      sign_in(:user, user)
      flash[:success] = t 'devise.omniauth_callbacks.success', kind: 'Google'
      redirect_to peggedplacetowork_root_path, event: :authentication
    else
      flash[:alert] = t 'devise.omniauth_callbacks.failure', kind: 'Google', reason: "Something went wrong, try again."
      redirect_to peggedplacetowork_root_path
    end
  end

  protected

  def after_omniauth_failure_path_for(_scope)
    new_user_session_path
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || peggedplacetowork_root_path
  end

  private

  def from_google_params
    @from_google_params ||= {
      email: auth.info.email,
    }
  end

  def auth
    @auth ||= request.env['omniauth.auth']
  end
end
