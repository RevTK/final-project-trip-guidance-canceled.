package com.tm.mp.account;

public interface AccountMapper {

	AccountDTO getAccountByID(AccountDTO a);

	int regAccount(AccountDTO a);

	int changePwDo(AccountDTO a);

	AccountDTO searchId(AccountDTO a);

}
