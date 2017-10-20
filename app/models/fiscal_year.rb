class FiscalYear < ApplicationRecord
	has_many :transactions
	belongs_to :client
	
end
