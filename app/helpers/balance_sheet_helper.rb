# frozen_string_literal: true

module BalanceSheetHelper
  def balance_sheet(account)
    account_balance = Cents.new account.net_income

    content_tag :div, style: "width: 500px; height: max-content;" do
      concat(content_tag(:div) do
        concat account.full_account_number
        concat " - "
        concat account.description
        concat " - "
        concat account_balance.human
      end)

      if account.has_children?
        concat(content_tag(:div, style: "padding-left: 10px;") do
          account.children.each do |child|
            concat(balance_sheet(child))
          end
        end)
      end
    end
  end
end
