Rails.application.routes.draw do

  devise_for :users, controllers: { 
    registrations: "users/registrations",
    sessions: "users/sessions",
    confirmations: "users/confirmations"
  }

  root to: 'home#index'

  get '/journals' => 'journals#index'
  get '/journals/new' => 'journals#new'

  post '/journals' => 'journals#create', as: 'journal_create'

  get '/journals/:id' => 'journals#show', as: 'journal'

  get '/journals/:id/edit' => 'journals#edit', as: 'journal_edit'

end
