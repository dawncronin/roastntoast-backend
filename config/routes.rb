Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :pictures
      resources :comments
      resources :likes
      resources :dislikes
      POST '/users/new', to: "users#create"
      POST '/auth', to: 'auth#create'
      GET '/current_user', to: 'auth#show'
    end
  end
end
