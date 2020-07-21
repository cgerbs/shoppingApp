Rails.application.routes.draw do
  resources :players
  resources :users
  resources :contacts
  resources :lists
  resources :lineitems
  resources :recruit_lists
  get "access/new"
  get "access/create"
  get "access/destroy"
  get "admin/index"
  get "recruiter/index"

  root "recruiter#index" # sends recruiters that go to 'root page' to recruiter/index
  get "recruiter", to: "recruiter#index"
  get "admin", to: "admin#index"
  get "login", to: "access#new" # #new before
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/access/new", to: "access#create"
  #  post "/access", to: "access#new"
end
