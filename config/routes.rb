Rails.application.routes.draw do
	root to: "main#index"

  resources :tasks do
    resources :subtasks
  end

  get "about", to: "about#index"
end
