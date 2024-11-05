package pkg.mem;

public class LoginBean {
	private String userId = "sample";
	private String userPw = "1234";
	
	public boolean chkAccount(String resId, String resPw) {
		boolean res;
		
		if(userId.equals(resId) && userPw.equals(resPw)) {
			res = true;
		}else {
			res = false;
		}
		
		return res;
	}
}
