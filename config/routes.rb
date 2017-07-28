Rails.application.routes.draw do
  resources :scores
  resources :subjects
  resources :objectives do
  	resources :assignments
  end
  resources :students do
  	resources :assignments
  end



  root "students#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
