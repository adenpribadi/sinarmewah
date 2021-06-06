Rails.application.routes.draw do
  resources :services
  resources :sales
  mount Ckeditor::Engine => '/ckeditor'
  
  resources :abouts
  resources :events
  resources :contacts
  resources :guest_books
  get '/guestbooks' => 'guest_books#index'

  devise_for :user, 
    path: '', 
    path_names: { 
      sign_in: 'login', 
      sign_out: 'logout'
    }, 
    controllers: {
      sessions: 'users/sessions'
    }

  devise_scope :user do
    get '/logout' => 'devise/sessions#destroy'
  end
  
  resources :products
  get 'home/index'
  get '/home' => 'home#index'

  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  get '/robots.:format', to: "pages#robots"
  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#internal_error"
end
