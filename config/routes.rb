Rails.application.routes.draw do
  resources :sheetrows do
    member do
      get 'copy'
    end
    collection do
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  namespace :api, { format: 'json' } do
    post 'authenticate' => 'authentication#authenticate'
    get 'sheetrows' => 'sheetrows#index'
    get 'tests' => 'tests#index'
  end
end
