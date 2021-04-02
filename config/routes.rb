Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :users

    resources :galleries, only: [:index, :new, :create, :edit, :update, :show, :destroy]
    resources :travels, only: [:index, :new, :create, :show, :destroy]
    resources :travel_plans, only: [:create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
