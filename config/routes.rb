Karate67272::Application.routes.draw do

  get "home/about"

  get "home/contact"

  get "home/privacy"

  get "sections/index"

  get "sections/show"

  get "sections/edit"

  get "sections/new"

  get "students/index"

  get "students/view"

  get "students/new"

  get "students/edit"

  # Generated routes
  resources :events
  resources :registrations
  resources :sections
  resources :students

  # Set the root url
  root :to => 'events#index'
  
end

