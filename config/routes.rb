Rails.application.routes.draw do
  root 'tasks#index'
  resources :categories
  resources :tasks
  resources :searches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
