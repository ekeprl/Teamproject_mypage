package com.teamproject.teamapp.mypage;

public class MypageVO {	
	private String memId;
    private String memPass;
    private String memName;
    private String memPhone;
    private String memEmail;
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPass() {
		return memPass;
	}
	public void setMemPass(String memPass) {
		this.memPass = memPass;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemPhone() {
		return memPhone;
	}
	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
    
	@Override
	public String toString() {
		System.out.println(memId);
		System.out.println(memPass);
		return super.toString();
	}
	
}
