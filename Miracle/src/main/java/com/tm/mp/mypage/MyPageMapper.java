package com.tm.mp.mypage;

import java.util.List;

import com.tm.mp.account.AccountDAO;
import com.tm.mp.account.AccountDTO;

public interface MyPageMapper {

	List<AccountDTO> showAllPage(AccountDAO a);

	
	
}
