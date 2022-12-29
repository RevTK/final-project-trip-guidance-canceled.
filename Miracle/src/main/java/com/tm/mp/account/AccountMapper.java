package com.tm.mp.account;

public interface AccountMapper {

	AccountDTO getAccountByID(AccountDTO a);

	int regAccount(AccountDTO a);

}
