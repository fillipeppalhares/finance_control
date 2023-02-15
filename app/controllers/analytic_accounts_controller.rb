# frozen_string_literal: true

class AnalyticAccountsController < ApplicationController
  def index
  end

  def new
    @analytic_account = AnalyticAccount.new
    @analytic_account.build_account
  end
end
