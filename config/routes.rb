Karate67272::Application.routes.draw do

  # Generated routes
  resources :events
  resources :registrations
  resources :sections
  resources :students

  # Set the root url
  root :to => 'events#index'
  
end

