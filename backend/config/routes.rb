Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root "articles#index"
      get "/articles", to: "articles#index"
      get "/articles/:id", to: "articles#show"
    end
  end
end
