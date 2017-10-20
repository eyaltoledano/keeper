require "administrate/base_dashboard"

class TransactionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    client: Field::BelongsTo,
    fiscal_year: Field::BelongsTo,
    id: Field::Number,
    date: Field::DateTime,
    description: Field::String,
    amount: Field::Number.with_options(decimals: 2),
    tax_gst: Field::Number.with_options(decimals: 2),
    tax_qst: Field::Number.with_options(decimals: 2),
    expense_amount_taxi: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :client,
    :fiscal_year,
    :id,
    :date,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :client,
    :fiscal_year,
    :id,
    :date,
    :description,
    :amount,
    :tax_gst,
    :tax_qst,
    :expense_amount_taxi,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :client,
    :fiscal_year,
    :date,
    :description,
    :amount,
    :tax_gst,
    :tax_qst,
    :expense_amount_taxi,
  ].freeze

  # Overwrite this method to customize how transactions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(transaction)
  #   "Transaction ##{transaction.id}"
  # end
end
