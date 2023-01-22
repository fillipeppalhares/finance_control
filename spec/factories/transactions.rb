FactoryBot.define do
  factory :financial_transaction do
    description { "MyString" }
    date { "2023-01-22" }
    fund { nil }
    chart_of_account { nil }
  end
end
