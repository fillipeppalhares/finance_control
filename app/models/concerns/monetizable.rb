# frozen_string_literal: true

module Monetizable
  extend ActiveSupport::Concern

  included do
    attribute_names.each do |attribute_name|
      next unless attribute_name.include? "_cents"

      compose = "composed_of(:#{attribute_name}, class_name: 'Cents', mapping: " \
               "%w[#{attribute_name} cents], converter: proc { |value| Cents.n" \
               "ew(value.to_s.tr('^0-9', '')) })"

      class_eval(compose)

      define_method :"#{attribute_name}_humanize" do
        attribute_humanize(attribute_name)
      end
    end
  end

  def attribute_humanize(attribute)
    send(attribute.to_s).humanize if attribute.include? "_cents"
  end
end