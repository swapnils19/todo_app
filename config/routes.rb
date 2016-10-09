Rails.application.routes.draw do
  namespace :users do
    get 'dashboard/admin_dashboard'
    get 'dashboard/projects_summery'
  end

  resources :projects do
    get :get_project_data
  end
  resources :todos
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  root 'todos#index'
  # get 'projects/get_project_data', to: 'projects#get_project_data'
end
