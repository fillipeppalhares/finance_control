# frozen_string_literal: true

class Whitelist < ApplicationRecord
  belongs_to :user
  belongs_to :fund
end
