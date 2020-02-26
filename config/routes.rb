Rails.application.routes.draw do

  resources :genres, only: [:create, :update, :show, :new, :edit]
  resources :artists, only: [:create, :update, :show, :new, :edit]
  resources :songs, only: [:create, :update, :show, :new, :edit]

end
