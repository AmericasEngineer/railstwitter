Rails.application.routes.draw do
  get 'users/show'

  get 'users/index'

  devise_for :users
  resources :users, :only =>[:show]
  resources :comments
  get 'pages/info'

	root to: redirect('/ideas')
  	resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
