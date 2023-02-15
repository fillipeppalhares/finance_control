# frozen_string_literal: true

class SyntheticAccountsController < ApplicationController
  def index
  end

  def new
    @synthetic_account = SyntheticAccount.new
    @synthetic_account.build_account
  end
end
