Rails.application.routes.draw do

  resources :dreams

  root 'welcome#index'
end
