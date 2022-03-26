Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pegged_place_to_works#index"

  get 'great_vs_pegged_place_to_work', to: 'great_place_to_works#index'

  resources :change_requests, only: %i[new create]

  get '*path' => redirect('/') unless Rails.env.development?
end
