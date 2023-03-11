# frozen_string_literal: true

class SyntheticAccount < ApplicationRecord
  has_one :account, as: :accountable, dependent: :destroy
  accepts_nested_attributes_for :account

  delegate :description, to: :account
  delegate :full_account_number, to: :account
  delegate :account_identity, to: :account
end
