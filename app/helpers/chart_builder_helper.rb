# frozen_string_literal: true

module ChartBuilderHelper
  def chart_builder(account)
    content_tag(:div, class: "container") do
      synthetic_account_builder(account)
    end
  end

  def analytic_account_builder(account)
    buttons = [[{ icon: "bi bi-pencil", link: edit_analytic_account_path(account.accountable), data: { turbo_frame: dom_id(account.accountable) } },
    { icon: "bi bi-x-lg", link: analytic_account_path(account.accountable), data: { turbo_method: :delete, turbo_confirm: "Are you sure?", turbo_frame: "_top" } }]]

    account_card(account, buttons)
  end

  def synthetic_account_builder(account)
    buttons = [[{ icon: "bi bi-pencil", link: edit_synthetic_account_path(account.accountable), data: { turbo_frame: dom_id(account.accountable) } },
    { icon: "bi bi-x-lg", link: synthetic_account_path(account.accountable), data: { turbo_method: :delete, turbo_confirm: "Are you sure?", turbo_frame: "_top" } }]]

    account_card(account, buttons) do
      if account.has_children?
        concat(content_tag(:div, class: "card-body collapse", id: dom_id(account, :collapsable)) do
          concat(content_tag(:div, style: "padding-left: 10px;") do
            account.children.each do |child|
              case child.accountable_type
              when "SyntheticAccount"
                concat(synthetic_account_builder(child))
              when "AnalyticAccount"
                concat(analytic_account_builder(child))
              end
            end
          end)
        end)
      end
    end
  end

  def account_card(account, buttons)
    content_tag :div, id: dom_id(account.accountable, :card), class: "card" do
      concat(content_tag(:div, class: "card-header") do
        concat(content_tag(:h5, class: "card-title  d-flex justify-content-between") do
          concat(content_tag(:span, data: { "bs-toggle": "collapse", "bs-target": dom_id(account, :"#collapsable") }) do
            concat(card_header(account))
          end)

          concat(icon_button_group(buttons))
        end)
      end)

      yield if block_given?
    end
  end

  def card_header(account)
    turbo_frame_tag account.accountable do
      concat account.full_account_number
      concat " - "
      concat account.description
    end
  end
end

