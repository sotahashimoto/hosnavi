Rails.application.routes.draw do
  devise_for :members

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  root to: 'home#top'
  get 'about', to: 'home#about'

  get "search" => "hospitals#search"

  namespace :admin do
    resources :hospitals, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :medical_departments, only: [:show, :index, :create, :edit, :update, :destroy]
  end

  resources :medical_departments, only: [:show, :index]
  resources :members, only: [:show, :edit, :update]
  resources :hospitals, only: [:show, :index] do
    resource :hospital_favorites, only: [:create, :destroy]
    resources :comments, only: [:show, :create] do
      resource :favorites, only: [:create, :destroy]
    end
  end
end