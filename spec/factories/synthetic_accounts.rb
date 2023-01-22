# frozen_string_literal: true

FactoryBot.define do
  factory :root_synthetic_accounts, class: "SyntheticAccount" do
    account_number { Faker::Number(digits: 1) }
    description { ["Assets", "Liabilities", "Owner's Equity", "Revenue", "Expense"].sample }
    ancestry { nil }

    association :chart_of_account, factory: :chart_of_accounts
    association :fund, factory: :funds
  end
end