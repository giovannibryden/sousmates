SousMates::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts

  root 'static#index'
  get '/about' => 'static#about'
  get '/contact' => 'static#contact'
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'

end
