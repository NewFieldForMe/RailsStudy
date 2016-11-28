Rails.application.routes.draw do
  resources :sheetrows do
    member do
      get 'copy'
    end
    collection do
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
