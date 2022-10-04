package com.teamproject.teamapp.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MypageDao {

	List<MypageVO> selectMypageList();

	int insertMypage(MypageVO vo);

	int delMypage(MypageVO vo);

	MypageVO selectMypage(String memId);

	int updateMypage(MypageVO vo);

	MypageVO selectLoginMypage(MypageVO vo);

	int update1Mypage(MypageVO vo);

	int passCheck(MypageVO vo);
	

//	int insertnmMypage(MypageVO vo);	

}