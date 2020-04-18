Rails.application.routes.draw do
  root 'welcome#login'
  resources 'users'
  resources 'suppliers'
  resources 'documents'
end
