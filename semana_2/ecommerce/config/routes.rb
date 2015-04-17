Rails.application.routes.draw do
  get 'laptops/index'
  resources :laptops
  root :to => "laptops#index"
  
end
