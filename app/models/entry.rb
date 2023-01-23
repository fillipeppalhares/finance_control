# frozen_string_literal: true

class Entry < ApplicationRecord
  include Monetizable

  belongs_to :fund
  belongs_to :chart_of_account
  belongs_to :analytic_account
  belongs_to :financial_transaction

  has_enumeration_for :entry_type, with: EntryTypeEnum, create_helpers: true
end
