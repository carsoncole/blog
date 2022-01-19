Rails.application.routes.draw do
  resources :subscribers
  resources :posts

  root "home#index"

  get 'disclosures' => 'home#disclosures', as: 'disclosures'
end
