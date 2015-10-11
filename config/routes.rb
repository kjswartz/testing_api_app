Rails.application.routes.draw do

###############################################
  # API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :interpreters, only: [:show, :index]
    end
  end

end
