Rails.application.routes.draw do
  resources :projects
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
  resources :students do 
    member do
      get :personal_details
    end
    collection do
      get :action
    end
  end
  resources :courses

end
