# frozen_string_literal: true

Rails.application.routes.draw do
  root 'scanners#show'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :scanner
  post 'scanner/search', to: 'scanners#search'
end
