Rails.application.routes.draw do

  devise_for :users
  resources :classifications
  resources :dreams, except: [:show] do
    resources :tags, only: [:new, :create]
  end

  root 'welcome#index'
  get 'explore', to: 'explore#get_explore'
  get 'signout', to: 'signout#get_signout'
  get 'collective', to: 'collective#get_collective'
end
