Karate67272::Application.routes.draw do

  get "home/index"

  get "registrations/index"

  get "registrations/show"

  get "registrations/edit"

  get "registrations/new"

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

  # Generated model routes
  resources :events
  resources :registrations
  resources :sections
  resources :students

  #Static page routes
    # Semi-static page routes
  match 'home' => 'home#index', :as => :home
  match 'about' => 'home#about', :as => :about
  match 'contact' => 'home#contact', :as => :contact
  match 'privacy' => 'home#privacy', :as => :privacy
  #match 'search' => 'home#search', :as => :search

  # Set the root url
  root :to => 'home#index'
  
end

