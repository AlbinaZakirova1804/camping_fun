Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities
  resources :campers
  resources :signups, only: [:new, :create, :show]
end
