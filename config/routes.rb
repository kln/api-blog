Rails.application.routes.draw do
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :posts, only: [:index, :show, :create]
  end
end
