Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    delete 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  scope :constraints => lambda {|req| MultiTenant::FetchTenant.call(req) == 'peggedplacetowork' } do
    root :to => "pegged_place_to_works#index", as: :peggedplacetowork_root

    get 'great_vs_pegged_place_to_work', to: 'great_place_to_works#index'

    resources :change_requests, only: %i[new create]
  end

  scope :constraints => lambda {|req| MultiTenant::FetchTenant.call(req) == 'techsalary' } do
    root :to => "salaries#index", as: :techsalary_root

    resources :salaries, only: %i[new create] do
      member do
        post 'vote_accurate'
        post 'vote_fake'
      end

      collection do
        get 'all'
      end
    end
  end

  get '*path' => redirect('/') unless Rails.env.development?
end
