Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root 'home#top'
  get 'home/top'
  resources :topics
end