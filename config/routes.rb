Rails.application.routes.draw do
  resources :projects
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
  #resources :students
  resources :courses

  namespace :admin do
    resources :students
    get 'dashboard' => 'dashboards#index'
  end

end
