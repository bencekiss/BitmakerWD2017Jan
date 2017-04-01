Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'table#index'

  resources :tables do
    resources :meals
    resources :beverages
  end
end
