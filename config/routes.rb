Rails.application.routes.draw do
  root "dashboard#index"
  resources :schedule_items
  resources :scores
  resources :subjects
  resources :objectives do
  	resources :assignments
  end
  resources :students do
  	resources :assignments
  end

  get '/students/:id/addObjective', to: 'students#addObjective', as: 'add_objective_to_student'
  post '/students/:id/addObjective', to: 'students#createAssignment'

  #TODO FIX this right
  get '/students/:id/deleteAssignment/:assignment_id', to: 'students#deleteAssignment', as: 'delete_objective_from_student'

  

  get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  get '/dashboard/:day', to: 'dashboard#index', as: 'dashboard_day'
  post '/dashboard/:day', to: 'dashboard#getScores'
  post '/dashboard', to: 'dashboard#getScores'
  post '/', to: 'dashboard#getScores'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
