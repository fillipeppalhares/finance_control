# frozen_string_literal: true

class SyntheticAccountsController < ApplicationController
  include ActionView::RecordIdentifier

  before_action :set_synthetic_account, only: %i[edit update destroy]
  before_action :set_parent_account, only: %i[new]

  def index
  end

  def new
    @synthetic_account = SyntheticAccount.new
    @synthetic_account.build_account(fund_id: @parent_account.account.fund_id, chart_of_account_id: @parent_account.account.chart_of_account_id, parent_id: @parent_account.account.id)
    @turbo_id = dom_id(@parent_account, :new_child)
  end

  def new_root_account
  end

  def create
    @synthetic_account = SyntheticAccount.new(set_params)
    @parent_account = @synthetic_account.account.parent.accountable

    respond_to do |format|
      if @synthetic_account.save
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
      if @synthetic_account.update(set_params)
        format.html { redirect_to chart_of_account_path(1) }
      else
        format.turbo_stream { flash.now[:alert] = "Error" }
      end
    end
  end

  def destroy
    @synthetic_account.destroy

    respond_to do |format|
      format.html { redirect_to chart_of_account_path(1) }
      format.turbo_stream
    end
  end

  private

  def set_synthetic_account
    @synthetic_account = SyntheticAccount.find(params[:id])
  end

  def set_params
    params.require(:synthetic_account).permit(:id, account_attributes: [:id, :account_number, :description, :ancestry, :accountable_type, :accountable_id, :fund_id, :chart_of_account_id])
  end

  def set_parent_account
    accountable_type = set_params["account_attributes"]["accountable_type"]
    accountable_id = set_params["account_attributes"]["accountable_id"]

    @parent_account = accountable_type.constantize.find(accountable_id)
  end
end
