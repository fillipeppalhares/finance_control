# frozen_string_literal: true

class AnalyticAccountsController < ApplicationController

  before_action :set_analytic_account, only: %i[edit update destroy]

  def index
  end

  def new
    @analytic_account = AnalyticAccount.new
    @analytic_account.build_account
  end

  def edit
  end

  def update
    respond_to do |format|
      if @analytic_account.update(set_params)
        format.html { redirect_to chart_of_account_path(1) }
      else
        format.turbo_stream { flash.now[:alert] = "Error" }
      end
    end
  end

  def destroy
    @analytic_account.destroy

    respond_to do |format|
      format.html { redirect_to chart_of_account_path(1) }
      format.turbo_stream
    end
  end

  private

  def set_analytic_account
    @analytic_account = AnalyticAccount.find(params[:id])
  end

  def set_params
    params.require(:analytic_account).permit(:id, :amount, account_attributes: [:id, :account_number, :description])
  end
end
