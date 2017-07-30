Rails.application.routes.draw do
  root "dashboard#index"
  resources :scores
  resources :subjects
  resources :objectives do
  	resources :assignments
  end
  resources :students do
  	resources :assignments
  end

  

  get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  post '/dashboard', to: 'dashboard#getScores'
  post '/', to: 'dashboard#getScores'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
