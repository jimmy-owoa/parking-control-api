Rails.application.routes.draw do
  resources :users, param: :_username
  post "/auth/login", to: "authentication#login"
  get "/current_user", to: "users#current_user"
  get "/*a", to: "application#not_found"
end
