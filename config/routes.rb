Rails.application.routes.draw do
  resources :watched_ats, only: [:index]
end
