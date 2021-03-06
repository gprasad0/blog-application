Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'posts/index'

  resources :posts
  resources :categories #controllers lways in plural
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
