# frozen_string_literal: true

FactoryBot.define do
  factory :analytic_accounts, class: "AnalyticAccount" do
    account_number {}
    description {}
    amount {}
    ancestry {}

    association :chart_of_account, factory: :chart_of_accounts
    association :fund, factory: :funds
  end
end