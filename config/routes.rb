Rails.application.routes.draw do
  get "cards" => "cards#index"

  root "cards#index"
end
