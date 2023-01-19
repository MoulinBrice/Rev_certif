Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rooms, only: [:index, :show] do
    resources :bookkings
  end

  resources :bookkings, only: [:index, :show, :new, :create, :edit, :update]
  resources :rooms, only: [:index, :show]
end
