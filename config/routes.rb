Rails.application.routes.draw do
  get 'carts/show'
  resources :carts, only: [:show]
  
  get 'cart_items/new'
  post 'cart_items/create'
  get 'cart_items/destroy'
  get 'cart_items/:id' ,to: 'cart_items#new'
  resources :cart_items, only:[:new, :create, :destroy]
  
  get "top/main"
  root 'top#main'
  
  get 'products/index'
  get 'products/new'
  post 'products/create'
  get 'products/destroy'
  #root 'products#index'
  delete 'products/:id' ,to: 'products#destroy'
  resources :products
  
end
