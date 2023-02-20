# frozen_string_literal: true

module IconButtonGroupHelper
  def icon_button_group(groups)
    content_tag(:div, class: "btn-toolbar") do
      groups.each do |group|
        concat(content_tag(:div, class: "btn-group me-2") do
          group.each do |button|
            concat(link_to(tag.i(class: button[:icon]), button[:link], class: button[:class] || "btn btn-primary", data: button[:data] || {}))
          end
        end)
      end
    end
  end
end
