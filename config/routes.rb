Rails.application.routes.draw do
  resources :scores
  resources :subjects
  resources :objectives
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
