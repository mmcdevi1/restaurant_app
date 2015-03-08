Rails.application.routes.draw do
  resources :restaurants  
  root to: "restaurants#index"

  resources :users, :only => :show

  devise_for :users
 
  devise_scope :user do
    get  '/register', to: 'devise/registrations#new', as: :register
    get  '/dashboard/profile/edit', to: 'devise/registrations#edit', as: :edit

    get  '/login', to: 'devise/sessions#new', as: :login   
    get  '/logout', to: 'devise/sessions#destroy', as: :logout
  end  
end
