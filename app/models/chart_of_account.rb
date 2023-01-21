class ChartOfAccount < ApplicationRecord
  has_one :whitelist
  has_many :users, through: :whitelist
end
