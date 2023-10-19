Rails.application.routes.draw do
	root to: "main#index"

  resources :tasks

  get "about", to: "about#index"
end
