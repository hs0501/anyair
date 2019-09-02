package controller;

public class seat {
	public static void main(String[] args) {
		
		int a = 1;
		char b = 'A';
		String query = "";
		
		for(int i=1; i<=6; i++, b++) {
			for(int j=1; j<=25; j++) {
				if(j<=9) {
					query = "insert into any_seat values('" + "0" + j + b + "');";
					System.out.println(query);
				} else {
					query = "insert into any_seat values('" + j + b + "');";
					System.out.println(query);
				}
			}
		}
		
		
	}
}
