Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      root "articles#index"
      get "/articles", to: "articles#index"
    end
end