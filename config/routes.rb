Rails.application.routes.draw do
  resources :toys
  resources :users
  root "application#hello"
end
