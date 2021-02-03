Rails.application.routes.draw do

  devise_for :users
  resources :sections do
    resources :ideas
  end
  resources :ideas
  resources :users
end
