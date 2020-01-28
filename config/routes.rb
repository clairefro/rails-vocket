Rails.application.routes.draw do
  root 'vocabs#index'

  resources :vocabs do
    resources :tags
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
