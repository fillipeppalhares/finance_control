class Whitelist < ApplicationRecord
  belongs_to :chart_of_account
  belongs_to :user
end
