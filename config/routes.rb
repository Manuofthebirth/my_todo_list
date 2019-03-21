Rails.application.routes.draw do
 
  #Nesting items into lists
  resources :todo_lists do
    resources :todo_items
  end

  # Homepage
  root 'todo_lists#index'
end