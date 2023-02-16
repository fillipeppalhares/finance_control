# frozen_string_literal: true

class ChartOfAccountsController < ApplicationController

  before_action :set_chart_of_account, only: %i[show]

  def index
    @charts_of_accounts = ChartOfAccount.all
  end

  def show
    @root_accounts = Account.where(chart_of_account: @chart_of_account).roots
  end

  private

  def set_chart_of_account
    @chart_of_account = ChartOfAccount.find(params[:id])
  end
end
