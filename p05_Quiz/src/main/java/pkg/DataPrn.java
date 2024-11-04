package pkg;

public class DataPrn {
	
	private String txt;

	public String getTxt() {
		
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
		System.out.println("수신 데이터 : "+ txt);
	}
	
	

}
