Rails.application.routes.draw do
  resources :businesses

  get 'admin', to: 'admin#index'

  resources :profiles

  devise_for :users, :controllers => { :registrations => "registrations" }
  
  root 'home#index'

end
