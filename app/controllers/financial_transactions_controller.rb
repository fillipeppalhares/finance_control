# frozen_string_literal: true

class FinancialTransactionsController < ApplicationController
  def new
    @financial_transaction = FinancialTransaction.new
    @financial_transaction.entries.build
  end

  def show
    @financial_transaction = set_financial_transaction
  end

  def create
    @financial_transaction = FinancialTransaction.new(set_params)
    
    respond_to do |format|
      if @financial_transaction.save
        format.html { redirect_to url_for(@financial_transaction) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_financial_transaction
    FinancialTransaction.find(params[:id])
  end

  def set_params
    params.require(:financial_transaction).permit(:description,
                                                  :date,
                                                  :chart_of_account_id,
                                                  :fund_id,
                                                  entries_attributes: [:id,
                                                                      :entry_type,
                                                                      :value_cents,
                                                                      :description,
                                                                      :chart_of_account_id,
                                                                      :fund_id,
                                                                      :analytic_account_id,
                                                                      :_destroy])
  end
end
