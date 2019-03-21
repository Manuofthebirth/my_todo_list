Rails.application.routes.draw do
  resources :todo_lists
  # Homepage
  root 'todo_lists#index'
end
