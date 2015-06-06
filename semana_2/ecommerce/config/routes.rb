Rails.application.routes.draw do

  get 'welcome/index'

  get 'laptops/index', 'backpacks/index'
  resources :laptops, :backpacks, :welcome

  root :to => "welcome#index"
  
end
