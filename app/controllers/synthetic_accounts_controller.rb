# frozen_string_literal: true

class SyntheticAccountsController < ApplicationController

  before_action :set_synthetic_account, only: %i[edit update destroy]

  def index
  end

  def new
    @synthetic_account = SyntheticAccount.new
    @synthetic_account.build_account
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
    params.require(:synthetic_account).permit(:id, account_attributes: [:id, :account_number, :description])
  end
end
