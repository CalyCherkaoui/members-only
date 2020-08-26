Rails.application.routes.draw do
  resources :posts, only: %i[new create index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "posts#index"
end
