class CreateFiscalYears < ActiveRecord::Migration[5.0]
  def change
    create_table :fiscal_years do |t|
      t.integer :client_id
      t.integer :year
      t.string :transactions

      t.timestamps
    end
  end
end
