Rails.application.routes.draw do

  devise_for :users
  resources :dreams, except: [:show] do
    # if you end up going many to many i would omit in the dreams.rb `has_many :tags through :taggings` or un-nest resources--but perhaps there would be no conflict
    resources :tags
  end


  root 'welcome#index'
  get 'explore', to: 'explore#get_explore'
  get 'signout', to: 'signout#get_signout'
  get 'collective', to: 'collective#get_collective'
end
