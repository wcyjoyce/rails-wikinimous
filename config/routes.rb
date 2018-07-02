Rails.application.routes.draw do
  # List articles
  get "articles", to: "articles#index"

  # Add article
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"

  # Display a single article
  get "articles/:id", to: "articles#show", as: :article

  # Update an article
  get "articles/:id/edit", to: "articles#edit", as: :articles_edit
  patch "articles/:id", to: "articles#update"

  # Delete an article
  delete "articles/:id", to: "articles#destroy"

  root to: "articles#index"
end
