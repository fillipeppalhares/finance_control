Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users

  get "/balance_sheet", to: "balance_sheets#index"

  resources :analytic_accounts
  resources :synthetic_accounts
  resources :chart_of_accounts
end
