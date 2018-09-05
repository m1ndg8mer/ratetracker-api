Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
			resources :currencies, only: [:index]
			resources :rates, only: [:index]
    end
  end
end
