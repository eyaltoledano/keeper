class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :client_id
      t.integer :fiscal_year_id
      t.datetime :date
      t.string :description
      t.float :amount
      t.float :tax_gst
      t.float :tax_qst
      t.float :expense_amount_taxi

      t.timestamps
    end
  end
end
