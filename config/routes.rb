Rails.application.routes.draw do

  devise_for :users
  resources :classifications
  resources :dreams do
    resources :tags, only: [:new, :create]
  end

  root 'welcome#index'
  get 'explore', to: 'explore#get_explore'
end
