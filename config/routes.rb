Rails.application.routes.draw do
  resources :lessons
  devise_for :users
  resources :courses
  resources :lessons
  root 'static_pages#landing_page'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'activity', to: 'static_pages#activity'
  resources :users, only: [:index, :edit, :show, :update]
end
