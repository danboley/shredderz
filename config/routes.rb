Rails.application.routes.draw do
  resources :awards
  resources :accommodations
  resources :resorts
  resources :gears
  resources :tripsandshredders
  resources :shredders
  resources :trips
  get '/hello', to: 'application#hello_world'

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
