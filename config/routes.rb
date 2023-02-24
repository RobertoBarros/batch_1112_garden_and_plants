Rails.application.routes.draw do

  resources :gardens, except: :index do
    resources :plants, only: :create
  end

  resources :plants, only: :destroy



  root "gardens#index"
end
