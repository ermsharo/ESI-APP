Rails.application.routes.draw do
  get 'ingredientes/index'
  get 'ingredientes/show'
  get 'ingredientes/new'
  get 'ingredientes/edit'
  resources :ingredients

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
