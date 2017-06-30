# Rails.application.routes.draw do
#   resources :alarms
#   resources :visitors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :alarms
  resources :visitors
  # root 'application#hello'
  root 'visitors#index'
end
