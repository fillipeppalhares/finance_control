# frozen_string_literal: true

class SyntheticAccount < Account
  validates :amount, presence: false
end
