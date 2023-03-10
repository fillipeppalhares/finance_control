# frozen_string_literal: true

class Account < ApplicationRecord
  has_ancestry
  belongs_to :chart_of_account
  belongs_to :fund
  belongs_to :accountable, polymorphic: true

  validates :account_number, presence: true
  validates :description, presence: true

  def full_account_number
    return account_number if is_root?

    "#{parent.full_account_number}.#{account_number}"
  end

  def account_identity
    "#{full_account_number} - #{description}"
  end

  def sum_accounts
    case accountable_type
    when "AnalyticAccount"
      accountable.sum_entries
    when "SyntheticAccount"
      children.reduce({}) do |sum, child|
        sum.merge(child.sum_accounts) { |_, first_value, second_value| first_value + second_value }
      end
    end
  end

  def net_income
    account_balance = sum_accounts
    credit = account_balance[:credit]
    debit = account_balance[:debit]

    return unless credit || debit

    credit - debit
  end
end
