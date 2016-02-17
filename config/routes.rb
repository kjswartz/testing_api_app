Rails.application.routes.draw do

###############################################
  # API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :interpreters
      resources :requesters
      resources :jobs
      resources :pools
      resources :escalations
      resources :calendar_jobs
      resources :providers

    end
  end

end
