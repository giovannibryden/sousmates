SousMates::Application.routes.draw do
  resources :posts

  root 'static#index'
  get '/about' => 'static#about'
  get '/contact' => 'static#contact'

end
