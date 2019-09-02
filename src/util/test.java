package util;

public class test {

	public static void main(String[] args) {
		String a =  "20190827";
		String b = a.substring(0, 4) + "-" + a.substring(4, 6) + "-" + a.substring(6, 8);
		System.out.println(b);
	}

}
