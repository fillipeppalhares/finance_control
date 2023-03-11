# frozen_string_literal: true

class FinancialTransaction < ApplicationRecord
  belongs_to :fund
  belongs_to :chart_of_account
  has_many :entries

  accepts_nested_attributes_for :entries, allow_destroy: true

  validates :description, presence: true
  validates :date, presence: true
end
