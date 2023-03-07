# frozen_string_literal: true

class AnalyticAccountsController < ApplicationController
  include ActionView::RecordIdentifier

  before_action :set_analytic_account, only: %i[edit update destroy]
  before_action :set_parent_account, only: %i[new]

  def index
  end

  def new
    @analytic_account = AnalyticAccount.new
    @analytic_account.build_account(fund_id: @parent_account.account.fund_id, chart_of_account_id: @parent_account.account.chart_of_account_id, parent_id: @parent_account.account.id)
    @turbo_id = dom_id(@parent_account, :new_child)
  end

  def create
    @analytic_account = AnalyticAccount.new(set_params)
    @parent_account = @analytic_account.account.parent.accountable

    respond_to do |format|
      if @analytic_account.save
        format.turbo_stream
      else
        format.turbo_stream { flash.now[:alert] = t("simple_form.error_notification.default_message") }
      end
    end
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
    params.require(:analytic_account).permit(:id, :amount, account_attributes: [:id, :account_number, :description, :ancestry, :accountable_type, :accountable_id, :fund_id, :chart_of_account_id])
  end

  def set_parent_account
    accountable_type = set_params["account_attributes"]["accountable_type"]
    accountable_id = set_params["account_attributes"]["accountable_id"]

    @parent_account = accountable_type.constantize.find(accountable_id)
  end
end
