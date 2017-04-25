Rails.application.routes.draw do
  defaults format: :json do
    resources :clients do
      resources :movements, only: %w(index create)
    end
    resources :movements, only: %w(index update destroy) do
      get :latest, on: :collection
    end
  end
end
