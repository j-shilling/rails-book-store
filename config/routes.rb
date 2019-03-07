Rails.application.routes.draw do
  resources :locations, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :books, only: [:index]
    resources :authors, only: [:index]
  end

  resources :books, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :authors, only: [:show, :index]
end
