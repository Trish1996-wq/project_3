Rails.application.routes.draw do
  resources :cards
  devise_for :users
  resources :decks
  resources :cards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #get '/', to: redirect('/users/sign_up')

  # Defines the root path route ("/")
  root "decks#index"
  get 'decks/:id/study', to: 'decks#study', as: 'study_deck'

end
