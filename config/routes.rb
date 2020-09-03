Rails.application.routes.draw do
  get 'hospitals/index'
  get 'hospitals/show'
  devise_for :members

  root to: 'home#top'
  get 'about', to: 'home#about'

  resources :members, only: [:show, :edit, :update]
end