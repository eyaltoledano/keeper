class Transaction < ApplicationRecord
	belongs_to :client
	belongs_to :fiscal_year

end
