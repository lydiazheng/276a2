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
      
    resources :trainers do
    resources :tokimons
    end

  end



  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
