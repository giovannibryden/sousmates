SousMates::Application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts 

  root 'posts#index'
  get '/about' => 'static#about'
  get '/contact' => 'static#contact'
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'

end
