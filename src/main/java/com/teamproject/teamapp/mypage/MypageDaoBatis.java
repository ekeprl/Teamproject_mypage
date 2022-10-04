package com.teamproject.teamapp.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

//@Repository
public class MypageDaoBatis implements MypageDao {
	@Autowired
//	private SqlSessionFactory sqlSessionFactory;
	private SqlSession session;
	
	@Override
	public List<MypageVO> selectMypageList() {
		return session.selectList("com.exam.exspring.mypage.MypageDao.selectMypageList");					
	}
	
	@Override
	public MypageVO selectMypage(String memId) {
		return  session.selectOne("com.exam.exspring.mypage.MypageDao.selectMypage", memId);		
	}

	@Override
	public int insertMypage(MypageVO vo) {
		return session.insert("com.exam.exspring.mypage.MypageDao.insertMypage", vo);
	}

	@Override
	public int delMypage(MypageVO vo) {
		return session.delete("com.exam.exspring.mypage.MypageDao.delMypage", vo);		
	}

	@Override
	public int updateMypage(MypageVO vo) {
		return session.update("com.exam.exspring.mypage.MypageDao.updateMypage", vo);		
	}

	@Override
	public MypageVO selectLoginMypage(MypageVO vo) {
		return  session.selectOne("com.exam.exspring.mypage.MypageDao.selectLoginMypage", vo);		
	}

	@Override
	public int update1Mypage(MypageVO vo) {
		return session.update("com.exam.exspring.mypage.MypageDao.update1Mypage", vo);
	}

	@Override
	public int passCheck(MypageVO vo) {
		
		return session.selectOne("com.exam.exspring.mypage.MypageDao.passCheck", vo);
	}

//	@Override
//	public int insertnmMypage(MypageVO vo) {
//		return session.update("com.exam.exspring.mypage.MypageDao.updateMypage", vo);
//	}

	
	


}
