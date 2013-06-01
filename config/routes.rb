LogCarService::Application.routes.draw do
  #get "service_records/index"
  root :to => 'service_records#index'

  resources :service_types

  resources :service_records
end
