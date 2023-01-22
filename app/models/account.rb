# frozen_string_literal: true

class Account < ApplicationRecord
  has_ancestry
  belongs_to :chart_of_account
  belongs_to :fund

  validates :account_number, presence: true
  validates :description, presence: true

  def full_account_number
    return account_number if is_root?

    "#{parent.full_account_number}.#{account_number}"
  end
end
