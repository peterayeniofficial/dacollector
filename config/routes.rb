# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'collections/index'
  # get 'collections/show'
  # get 'collections/new'
  # get 'collections/create'
  # get 'collections/edit'
  # get 'collections/update'
  # get 'collections/destroy'
  resources :collections
  root 'static#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
