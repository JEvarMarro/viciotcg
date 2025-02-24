Rails.application.routes.draw do
  get "cards" => "cards#index"
  resources :game_sets, only: [ :index, :update ]
  root "cards#index"
end
