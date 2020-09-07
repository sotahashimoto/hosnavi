Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :members

  root to: 'home#top'
  get 'about', to: 'home#about'

  resources :medical_departments, only: [:show]
  resources :members, only: [:show, :edit, :update]
  resources :hospitals, only: [:show, :index] do
    resources :comments, only: [:show, :create] do
      resource :favorites, only: [:create, :destroy]
    end
  end
end