Rails.application.routes.draw do
  root "application#hello"

  resources :users

  match "*path" => "application#render_404", via: :all
end
