 Doit::Application.routes.draw do


devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

resources :todos

   get 'about' => 'welcome#about'

   root to: 'welcome#index'

 match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

  
end