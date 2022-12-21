# frozen_string_literal: true

require "sidekiq/web"
Rails.application.routes.draw do
  devise_for :admin_users, path: "admin", path_names: {
    sign_in: "login",
    sign_out: "logout"
  }

  namespace :admin do
    root "dashboard#index"
    resources :posts, param: :slug
    resources :creator_profiles, param: :slug
    resources :stores, param: :slug
    resources :products, param: :slug
    mount Flipper::UI.app(Flipper) => "/flipper"
    mount Sidekiq::Web => "/sidekiq"
  end
  root "home#index"
  get "about", to: "pages#about", as: "about"
  get "for-creators", to: "pages#for_creators", as: "for_creators"
  get "comics", to: "products#show", as: "comics"
  devise_for :users, path: "", path_names: {
    sign_in: "login",
    sign_out: "logout",
    sign_up: "signup",
  }

  resources :projects, param: :slug
  resources :posts, param: :slug, only: [:index, :show]
  resources :profiles, param: :slug, only: [:show]
  resources :stores, param: :slug, only: [:show]
  resources :products, param: :slug, only: [:show]
  resources :stores, param: :slug, only: [:show]
  resources :shop, only: [:index]

  get "stores/show"

  namespace :dashboard do
    root "home#index"
    resources :profiles, param: :slug
    resources :projects, param: :slug
    resources :stores, param: :slug
    resources :products, param: :slug
  end
  resources :backings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
