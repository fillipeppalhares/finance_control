Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users

  get "/balance_sheet", to: "balance_sheets#index"
end
