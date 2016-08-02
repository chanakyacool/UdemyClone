Rails.application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :courses

  authenticated do
    root 'dashboard#index'
  end

  unauthenticated do
    root 'welcome#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
