Rails.application.routes.draw do
  
  root 'trainers#index'
  
  # resources :trainers   do
  #   member do
  #     get :delete
  #   end
  # end
  
  #   resources :tokimons   do
  #   member do
  #     get :delete
  #   end
  
  #using nested resource routes  
    resources :trainers do
    resources :tokimons
    end
  
  get '/tokimons', to: 'tokimons#index'
  end



  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
