FactoryBot.define do
  factory :entry do
    entry_type { 1 }
    value { 1 }
    description { "MyString" }
    fund { nil }
    chart_of_account { nil }
    analytic_account { nil }
    financial_transaction { nil }
  end
end
