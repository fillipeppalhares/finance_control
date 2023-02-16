# frozen_string_literal: true

module ChartBuilderHelper
  def chart_builder(account)
    content_tag :div, class: "card" do
      concat(content_tag(:div, class: "card-header") do
        concat(content_tag(:h5, class: "card-title") do
          concat(content_tag(:span, data: { "bs-toggle": "collapse", "bs-target": "#collapsable_#{account.id}" }, aria: { expanded: "false", controls: "collapsable" }) do
            concat account.full_account_number
            concat " - "
            concat account.description
          end)

          concat(content_tag(:span, class: "btn-group") do
            concat(content_tag(:button, class: "btn btn-outline-primary") do
              concat(content_tag(:i, class: "bi bi-pencil"))
            end)

            concat(content_tag(:button, class: "btn btn-outline-primary") do
              concat(content_tag(:i, class: "bi bi-x-lg"))
            end)
          end)
        end)
      end)

      if account.has_children?
        concat(content_tag(:div, class: "card-body collapse", id: "collapsable_#{account.id}") do
          concat(content_tag(:div, style: "padding-left: 10px;") do
            account.children.each do |child|
              concat(chart_builder(child))
            end
          end)
        end)
      end
    end
  end
end
