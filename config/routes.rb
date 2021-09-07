Rails.application.routes.draw do
  #create name spacing like so: zestie.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :users
      resources :cuisines
      resources :dishes
    end
  end
end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

