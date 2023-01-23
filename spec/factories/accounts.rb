FactoryBot.define do
  factory :account do
    account_number { "MyString" }
    description { "MyString" }
    chart_of_account { nil }
    fund { nil }
    accountable { nil }
  end
end
