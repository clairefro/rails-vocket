Rails.application.routes.draw do
  root 'vocabs#index'

  authenticate :user do
    resources :vocabs do
      resources :tags
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
