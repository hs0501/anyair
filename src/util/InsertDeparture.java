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

public class InsertDeparture {
   public static void main(String[] args) throws Exception{
      InsertDeparture csvInsert = new InsertDeparture();
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
         System.out.println("연결되지 않았습니다.");
      } // 드라이버 연결

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
      System.out.println("dep");
      //반환용 리스트
        BufferedReader br = null;

        try{
           conn = getConn();
           pstmt = conn.prepareStatement("insert into any_departure values (?, ?, ?, ?, ?, ?)");
            br = Files.newBufferedReader(Paths.get("C:\\sch\\departure1.csv"));
            Charset.forName("UTF-8");
            String line = "";
            while((line = br.readLine()) != null){
               //CSV 1행을 저장하는 리스트
                List<String> tmpList = new ArrayList<String>();
                String array[] = line.split(",");
                //배열에서 리스트 반환
                tmpList = Arrays.asList(array);
                String stdate = tmpList.get(3).substring(0, 4) + "-" + tmpList.get(3).substring(4, 6) + "-" + tmpList.get(3).substring(6, 8);
                tmpList.set(3, stdate);
                String eddate = tmpList.get(4).substring(0, 4) + "-" + tmpList.get(4).substring(4, 6) + "-" + tmpList.get(4).substring(6, 8);
                tmpList.set(4, eddate);
                if(tmpList.get(6).contains("/ ")) {
                   tmpList.set(6, tmpList.get(6).replace("/ ", "/"));
                }
                System.out.println(tmpList);
                pstmt.setString(1, tmpList.get(1));
                pstmt.setString(2, tmpList.get(0));
                pstmt.setString(3, tmpList.get(2));
                pstmt.setString(4, tmpList.get(3));
                pstmt.setString(5, tmpList.get(4));
                pstmt.setString(6, tmpList.get(6));
                pstmt.executeUpdate();
                
				
				  pstmt = conn.
				  prepareStatement("delete from any_departure where air_code not like 'KE%'");
				  pstmt.executeUpdate();
				 

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