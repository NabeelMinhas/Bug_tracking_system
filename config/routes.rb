Rails.application.routes.draw do
  devise_for :users, skip: [:registrations], controllers: {
    invitations: 'users/invitations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
