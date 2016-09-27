Rails.application.routes.draw do
  resources :schedules, only: [:index], defaults: { format: :json }
end
