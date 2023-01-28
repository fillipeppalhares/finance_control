# frozen_string_literal: true

class BalanceSheetsController < ApplicationController
  def index
    @root_accounts = Account.roots
  end
end
