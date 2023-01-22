# frozen_string_literal: true

class Account < ApplicationRecord
  has_ancestry
  belongs_to :chart_of_account
  belongs_to :fund
end
