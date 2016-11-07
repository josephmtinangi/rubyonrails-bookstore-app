Rails.application.routes.draw do
  resources :publishers do
    member do
      get 'delete'
    end
  end

  resources :authors do
    member do
      get 'delete'
    end
  end

  resources :categories do
    member do
      get 'delete'
    end
  end

  resources :books do
    member do
      get 'delete'
    end
  end

  get 'about/index'

  root 'books#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
