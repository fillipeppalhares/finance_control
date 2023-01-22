# frozen_string_literal: true

class Cents
  include ActionView::Helpers::NumberHelper
  attr_accessor :cents

  def initialize(value)
    @cents = value.to_s.tr("^0-9", "").to_i
  end

  def humanize
    value = cents.to_d / 100
    number_to_currency value, unit: ""
  end

  alias human humanize
end