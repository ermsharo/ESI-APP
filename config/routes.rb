Rails.application.routes.draw do

  get 'ingrediente/index'
  get 'ingrediente/show'
  get 'ingrediente/new'
  post 'ingrediente/new'
  get 'ingrediente/edit'

  resources :ingrediente
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
