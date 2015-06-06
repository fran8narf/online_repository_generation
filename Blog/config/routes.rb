Rails.application.routes.draw do
  
  resources :posts do #nested routes (after that, rake routes in order to make the new routes)
 	 resources :comments
  end

  root "posts#index"

end
