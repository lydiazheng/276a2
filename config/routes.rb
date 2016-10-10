Rails.application.routes.draw do
  get 'tokimon/home'

  get 'tokimon/log_in'

  get 'tokimon/tokimon_info'

  get 'tokimon/trainer_info'

  get 'tokimon/trainer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
