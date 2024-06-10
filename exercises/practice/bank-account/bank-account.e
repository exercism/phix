
// Define the account type. It must be possible to obtain a balance and open/closed status from it.

global type account(object a)
    crash("please implement account")
end type

global function open_account(integer amount)
    // Create a new account and set the initial balance.
    // Return a message (string) if the initial balance is negative.
    crash("please implement open_account")
end function

global function get_balance(account a)
    // Return the account balance in a thread-safe manner. 
    // Return a message (string) if the account is closed.
    crash("please implement get_balance")
end function

global function make_deposit(account a, integer amount)
    // Make a deposit/withdrawal in a thread-safe manner and return the balance. 
    // Return an error (string) if account closed or balance would go negative.
    crash("please implement make_deposit")
end function

global function close_account(account a)
    // Close the account in a thread-safe manner and return the balance. 
    // Return an error (string) if account has already been closed.
    crash("please implement close_account")
end function

