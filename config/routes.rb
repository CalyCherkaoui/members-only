Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :posts, only: %i[new create index]

  root "posts#index"
end
