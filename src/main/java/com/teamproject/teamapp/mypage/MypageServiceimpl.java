package com.teamproject.teamapp.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MypageServiceimpl implements MypageService{
	@Autowired
	private MypageDao mypageDao;
	
	@Override
	public List<MypageVO> selectMypageList() {
		return mypageDao.selectMypageList();
	}

	@Override
	public int insertMypage(MypageVO vo) {
		return mypageDao.insertMypage(vo);
	}

	@Override
	public int delMypage(MypageVO vo) {
		return mypageDao.delMypage(vo);
	}

	@Override
	public MypageVO selectMypage(String memId) {
		return mypageDao.selectMypage(memId);
	}

	@Override
	public int updateMypage(MypageVO vo) {
		return mypageDao.updateMypage(vo);
	}

	@Override
	public MypageVO selectLoginMypage(MypageVO vo) {
		return mypageDao.selectLoginMypage(vo);
	}

	@Override
	public int update1Mypage(MypageVO vo) {
	
		return mypageDao.update1Mypage(vo);
	}

	@Override
	public int passCheck(MypageVO vo) {
		
		return mypageDao.passCheck(vo);
	}



	


}
