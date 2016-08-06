Rails.application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :courses do
    resources :sections do
      resources :lectures
    end
  end

  resources :categories do
    resources :sub_categories
  end

  authenticated do
    root 'dashboard#index'
  end

  unauthenticated do
    root 'welcome#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
