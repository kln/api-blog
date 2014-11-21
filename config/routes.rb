Rails.application.routes.draw do
  namespace :api, path: '/' do
    resources :posts, only: [:index, :show, :create]
  end

	get '/', to: redirect('/posts')
end
