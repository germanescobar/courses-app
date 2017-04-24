Rails.application.routes.draw do
  root "courses#index"

  resources :courses, only: [:index, :show] do
    resources :subjects, only: [:new, :create]
  end
end
