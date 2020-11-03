Rails.application.routes.draw do
  devise_for :members, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  root to: 'home#top'
  get 'about', to: 'home#about'
  get "search", to: 'hospitals#search'
  post '/homes/guest_sign_in', to: 'home#new_guest'

  resources :members, only: [:show, :edit, :update] do
    resources :events, only: [:edit, :index, :create, :update, :destroy]
  end

  namespace :admin do
    resources :hospitals, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :medical_departments, only: [:show, :index, :create, :edit, :update, :destroy]
    resources :consultation_days, only: [:index, :create, :update, :destroy]
  end

  resources :hospitals, only: [:show, :index] do
    resources :hospital_favorites, only: [:index, :create, :destroy]
    resources :comments, only: [:show, :create] do
      resource :favorites, only: [:create, :destroy]
    end
  end

  resources :medical_departments, only: [:show, :index]
end