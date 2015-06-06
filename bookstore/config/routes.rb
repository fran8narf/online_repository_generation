Rails.application.routes.draw do
  root "books#index"
  
  post "/books" => 'books#search'

  resources :books do
    resources :rates
  end

end
