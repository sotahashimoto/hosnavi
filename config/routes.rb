Rails.application.routes.draw do
  devise_for :members
  root to: 'home#top'
  get 'about', to: 'home#about'
end
