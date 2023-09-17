Rails.application.routes.draw do
  devise_for :admin_users, controllers: {
    sessions: 'admin_user/sessions',
    registrations: 'admin_user/registrations',
    passwords: 'admin_user/passwords'
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
  #resources :students

  namespace :admin do
    resources :students
    resources :projects
    resources :blogs
    resources :courses
    get 'dashboard' => 'dashboards#index'
  end

end
