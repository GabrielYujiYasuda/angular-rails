Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      #root "articles#index"
      #resources :articles, only:[:index, :show, :create, :update, :destroy]

      get "/articles", to: "articles#index"
      get "/articles/:id", to: "articles#show"
      post "/articles", to: "articles#create"
      put "/articles/:id", to: "articles#update"
      delete "/articles/:id", to: "articles#destroy"
    end
  end
end
