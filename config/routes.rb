Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new]

  post '/posts/', to: 'posts#create', as: 'create_post'

end
