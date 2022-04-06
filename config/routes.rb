Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    delete 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  root "pegged_place_to_works#index"

  get 'great_vs_pegged_place_to_work', to: 'great_place_to_works#index'

  resources :change_requests, only: %i[new create]

  get '*path' => redirect('/') unless Rails.env.development?
end
