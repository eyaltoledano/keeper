json.extract! transaction, :id, :client_id, :fiscal_year_id, :date, :description, :amount, :tax_gst, :tax_qst, :expense_amount_taxi, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
