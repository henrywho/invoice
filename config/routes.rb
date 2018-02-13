Rails.application.routes.draw do
  resources :line_items, only: [:index, :update, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'line_items#index'
end
