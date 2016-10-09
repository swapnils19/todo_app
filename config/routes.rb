Rails.application.routes.draw do
  resources :projects
  resources :todos
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
end
