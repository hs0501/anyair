package util;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class InsertArrival {
	public static void main(String[] args) throws Exception{
		InsertArrival csvInsert = new InsertArrival();
		csvInsert.getConn();
		csvInsert.execute();
        
    }

	public Connection getConn() {
		Connection conn = null;

		String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "scott";
		String pw = "1111";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.getMessage();
			System.out.println("�뿰寃곕릺吏� �븡�븯�뒿�땲�떎.");
		} // �뱶�씪�씠踰� �뿰寃�

		try {
			conn = DriverManager.getConnection(oracleUrl, id, pw);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void execute() throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		System.out.println("arr");
		//諛섑솚�슜 由ъ뒪�듃
        BufferedReader br = null;

        try{
        	conn = getConn();
        	pstmt = conn.prepareStatement("insert into any_arrival(air_code, departure_day, departure_time, st_date, ed_date, departure_city) values (?, ?, ?, ?, ?, ?)");
            br = Files.newBufferedReader(Paths.get("C:\\sch\\arrival1.csv"));
            Charset.forName("UTF-8");
            String line = "";
            while((line = br.readLine()) != null){
            	//CSV 1�뻾�쓣 ���옣�븯�뒗 由ъ뒪�듃
                List<String> tmpList = new ArrayList<String>();
                String array[] = line.split(",");
                //諛곗뿴�뿉�꽌 由ъ뒪�듃 諛섑솚
                tmpList = Arrays.asList(array);
                String stdate = tmpList.get(4).substring(0, 4) + "-" + tmpList.get(4).substring(4, 6) + "-" + tmpList.get(4).substring(6, 8);
                tmpList.set(4, stdate);
                String eddate = tmpList.get(5).substring(0, 4) + "-" + tmpList.get(5).substring(4, 6) + "-" + tmpList.get(5).substring(6, 8);
                tmpList.set(5, eddate);
                if(tmpList.get(6).contains("/ ")) {
                	tmpList.set(6, tmpList.get(6).replace("/ ", "/"));
                }
                pstmt.setString(1, tmpList.get(2));
                pstmt.setString(2, tmpList.get(0));
                pstmt.setString(3, tmpList.get(3));
                pstmt.setString(4, tmpList.get(4));
                pstmt.setString(5, tmpList.get(5));
                pstmt.setString(6, tmpList.get(6));
                pstmt.executeUpdate();
                
//                pstmt = conn.prepareStatement("delete from any_arrival where air_code not like 'KE%'");
//                pstmt.executeUpdate();

            }
        }catch(FileNotFoundException e){
            e.printStackTrace();
        }catch(IOException e){
            e.printStackTrace();
        }finally{
            try{
                if(br != null){
                    br.close();
                }
                if(pstmt != null) try { pstmt.close(); } catch (SQLException e) {}
         	   if(conn  != null) try { conn.close();  } catch (SQLException e) {}
            }catch(IOException e){
                e.printStackTrace();
            }
        }
	}
}
