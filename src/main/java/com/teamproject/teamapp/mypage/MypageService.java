package com.teamproject.teamapp.mypage;

import java.util.List;

public interface MypageService {

	List<MypageVO> selectMypageList();

	int insertMypage(MypageVO vo);

	int delMypage(MypageVO vo);

	MypageVO selectMypage(String memId);

	int updateMypage(MypageVO vo);
	
	
	MypageVO selectLoginMypage(MypageVO vo);

	int update1Mypage(MypageVO vo);
	
	int passCheck(MypageVO vo);

	

}