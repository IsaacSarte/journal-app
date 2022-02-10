Rails.application.routes.draw do

  devise_for :users, controllers: { 
    registrations: "users/registrations",
    sessions: "users/sessions",
    confirmations: "users/confirmations"
  }

  root to: 'home#index'

  get '/journals' => 'journals#index'

end
