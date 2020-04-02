Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "static_pages#index"
  
  get 'about', to: 'static_pages#about'
  get 'contact_page', to: 'static_pages#contact_page'
  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  delete 'log_out', to: 'sessions#destroy'
    
  resources :contacts
  resources :users, only: [:new, :create, :show]
  
end
