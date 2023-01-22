class FinancialTransaction < ApplicationRecord
  belongs_to :fund
  belongs_to :chart_of_account

  validates :description, presence: true
  validates :date, presence: true
end
