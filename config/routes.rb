Rails.application.routes.draw do
  get 'trainer/log_in'

  get 'trainer/trainer_info'

  get 'trainer/trainer'

  get 'trainer/trainer_rank'

  get 'tokimon/home'

  get 'tokimon/log_in'

  get 'tokimon/tokimon_info'

  get 'tokimon/trainer_info'

  get 'tokimon/trainer'
  
  root 'tokimon#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
