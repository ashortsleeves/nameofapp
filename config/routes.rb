Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  
  resources :products do
    resources :comments
  end
  resources :users
  resources :object_names
  resources :orders, only: [:index, :show, :create, :destroy]
  post 'payments/create'
  
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/landing_page'

  post 'static_pages/thank_you'

  root 'static_pages#landing_page'

  #root 'static_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'

  
end

