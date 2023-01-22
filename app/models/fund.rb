# frozen_string_literal: true

class Fund < ApplicationRecord
  has_one :whitelist
  has_one :chart_of_account
  has_many :users, through: :whitelist
end
