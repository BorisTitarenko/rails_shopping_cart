Rails.application.routes.draw do

  get 'order_items/create'
  get 'products/index'
  #get 'categories/index'
  root 'categories#index'

  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end

  get "/card" => "order_items#index"

  resources :order_items, path: "/cart/order"

  get "/card/checkout" => "orders#new", as: "checkout"
  patch "/card/checkout" => "orders#create"

end
