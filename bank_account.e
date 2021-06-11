note
	description: "Bank account with the basic features of a simple bank account that is connected to a savings account"
	author: "Diana Munyaradzi"
	date: "$Friday, 11 June 2021$"
	revision: "$Revision$"

class
	BANK_ACCOUNT

	feature -- Attributes that can be accessed directly by the public

		account_balance: REAL -- Returns the bank balance when requested
		deposists: INTEGER -- Returns the number of deposits made into the account to date
			do
				if total_deposits /= VOID then
					Result := total_deposit.count
				end
			end

	feature -- These features allow a user to command the class to carry out an action

		make_deposit (sum: INTEGER)

		do
			if total_deposits = VOID then
				create total_deposits
			end

			total := total_deposits.extend (sum)
			account_balance := account_balance + sum
		end

	feature {NONE}

		total_deposits: DEPOSIT_LIST

end
