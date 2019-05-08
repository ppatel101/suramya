Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashbords#index"

  post 'v1/search', to: "dashbords#search"
  get 'v1/home', to: "dashbords#home"

end
