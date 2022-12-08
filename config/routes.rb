Rails.application.routes.draw do

 scope module: :public do
 devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
    root to: 'homes#top'
    get 'about' => 'homes#about'

    resources :items, only: [:index, :show]
    resources :cart_items, only: [:index, :create, :destroy, :destroy_all]
    resources :orders, only: [:new, :comfirm, :complete, :create, :index, :show]
    resources :order_details, only: [:index, :edit, :create, :update, :destroy]
    resources :customers, only: [:show, :edit, :update]

end

 namespace :admin do
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
    get 'admin' => 'homes#top'

    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]

  end

end

  #evise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  #sessions: "admin/sessions"
#}
  #devise_for :customers,skip: [:passwords], controllers: {
  #registrations: "public/registrations",
 # sessions: 'public/sessions'
#}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

