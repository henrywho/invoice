Rails.application.routes.draw do
  get 'line_items/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'line_items#index'
end
