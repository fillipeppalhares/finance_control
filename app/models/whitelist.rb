class Whitelist < ApplicationRecord
  belongs_to :user
  belongs_to :fund
end
