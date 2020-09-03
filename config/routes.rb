Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :members

  root to: 'home#top'
  get 'about', to: 'home#about'

  resources :members, only: [:show, :edit, :update]
end