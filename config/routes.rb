Rails.application.routes.draw do
  #session
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  get 'welcome', to: 'session#welcome'
  get 'destroy', to: 'session#destroy'
  get 'authorized', to: 'session#page_requires_login'
  #resources
  resources 'users'
  resources 'suppliers'
  resources 'documents'

  root 'session#new'
end
