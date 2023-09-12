Rails.application.routes.draw do
  # Define the root path route ("/")
  root "home#index"

  # Define routes for a resource (e.g., "articles")
  resources :articles

  # Define custom routes
  get "/about", to: "home#about"
  get "/contact", to: "home#contact"

  # Define routes for nested resources
  resources :authors do
    resources :books
  end

  # Define routes with constraints
  get "/posts/:id", to: "posts#show", constraints: { id: /\d+/ }

  # Define a route with a custom URL
  get "/custom-url", to: "custom#action"

  # Define routes with names
  get "/dashboard", to: "admin#dashboard", as: :admin_dashboard

  # Define a catch-all route for 404 errors
  get "*unmatched_route", to: "errors#not_found"
end
