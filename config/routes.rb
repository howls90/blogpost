Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  namespace 'api' do
  	namespace 'v1' do
  		resources :posts
  		resources :comments
  	end
  end

  resources :posts do
  	resources :comments
  end

  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
