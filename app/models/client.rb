class Client < ApplicationRecord
	has_many :fiscal_years
	has_many :transactions
end
