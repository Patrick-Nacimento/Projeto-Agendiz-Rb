Rails.application.routes.draw do
  resources :groups
  resources :interns
  get 'welcome/index'
  resources :recruiters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
