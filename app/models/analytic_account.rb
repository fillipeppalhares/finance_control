# frozen_string_literal: true

class AnalyticAccount < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_one :account, as: :accountable, dependent: :destroy
  accepts_nested_attributes_for :account

  validates :amount, inclusion: [true, false]

  def sum_entries
    credit_entries = entries.select(&:credit?)
    credit = sum_values(credit_entries)

    debit_entries = entries.select(&:debit?)
    debit = sum_values(debit_entries)

    { credit:, debit: }
  end

  private

  def sum_values(entries)
    entries.reduce(0) { |sum, entry| sum + entry.value_cents.cents }
  end
end
