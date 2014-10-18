Rails.application.routes.draw do
  root to: 'site#index'
  resources :site
  resources :site_template
  match "*path", to: "site#index", via: "get"
end
