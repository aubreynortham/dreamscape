Rails.application.routes.draw do

  devise_for :users
  resources :dreams, except: [:show] do
    resources :tags
  end

  root 'welcome#index'
  get 'explore', to: 'explore#get_explore'
  get 'signout', to: 'signout#get_signout'
  get 'collective', to: 'collective#get_collective'
end
