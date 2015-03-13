Rails.application.routes.draw do
  
  # get 'static_pages/index'

  resources :restaurants  
  root to: "static_pages#index"

  # resources :users, :only => :show

  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
 
  devise_scope :user do
    get  '/register', to: 'users/registrations#new', as: :register
    get  '/dashboard/profile/edit', to: 'users/registrations#edit', as: :edit

    get  '/login', to: 'users/sessions#new', as: :login   
    get  '/logout', to: 'users/sessions#destroy', as: :logout
  end  

  devise_for :owners, controllers: { registrations: "owners/registrations", sessions: "owners/sessions" }

  devise_scope :owner do
    get  'owners/register', to: 'owners/registrations#new', as: :owner_register
    get  'owners/dashboard/profile/edit', to: 'owners/registrations#edit', as: :owner_edit

    get  'owners/login', to: 'owners/sessions#new', as: :owner_login   
    get  'owners/logout', to: 'owners/sessions#destroy', as: :owner_logout
  end  
  
end
