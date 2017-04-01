Rails.application.routes.draw do


  root "bences#show"

  resources :bences, only: %i(show edit update) do
    resources :edus
    resources :works
    resources :projects
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
