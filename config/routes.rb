Rails.application.routes.draw do
 
  devise_for :users
  # Nesting items into lists
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  # Homepage
  root 'todo_lists#index'
end