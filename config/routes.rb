Rails.application.routes.draw do
  root to: 'character#index'
  resources :characters
end
