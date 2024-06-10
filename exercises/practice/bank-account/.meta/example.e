integer a_cs = init_cs(),
        amax = 0
sequence account_balances = {},
         account_closed = {}

global type account(object a)
    return integer(a) and a>=1 and a<=amax
end type

global function open_account(integer amount)
    if amount<0 then return "initial balance may not be negative" end if
    enter_cs(a_cs)
    account_balances &= amount
    account_closed &= false
    amax += 1
    integer res = amax
    leave_cs(a_cs)
    return res
end function

global function get_balance(account a)
    enter_cs(a_cs)
    object res = iff(account_closed[a]?"account closed":account_balances[a])
    leave_cs(a_cs)
    return res
end function

global function make_deposit(account a, integer amount)
    object res
    enter_cs(a_cs)
    integer nb = account_balances[a]+amount
    if account_closed[a] or nb<0 then
        res = "account closed or balance would go negative"
    else
        res = nb
        account_balances[a] = nb
    end if
    leave_cs(a_cs)
    return res
end function

global function close_account(account a)
    enter_cs(a_cs)
    object res = iff(account_closed[a]?"account already closed":account_balances[a])
    account_balances[a] = 0
    account_closed[a] = true
    leave_cs(a_cs)
    return res
end function

