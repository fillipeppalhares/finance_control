# frozen_string_literal: true

class AnalyticAccount < Account
  validates :amount, presence: true
end
