Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/", to: "home#index"
  post "/sum", to: "home#sum"
end