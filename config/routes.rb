Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists

  get '/', to: 'application#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
