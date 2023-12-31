Rails.application.routes.draw do
  resources :guests
  resources :form_of_payments
  resources :financial_accounts
  resources :hotels
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'dashboard#index'
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
