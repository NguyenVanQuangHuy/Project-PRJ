package DAL;


import java.sql.Connection;
import java.sql.DriverManager;


public class DBcontext {
    
    /*USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE SQL SERVER INSTANCE(s)*/
    /*DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE CONNECTION*/
     public Connection getConnection()throws Exception {        
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber +
                ";databaseName="+dbName;//+"; integratedSecurity=true";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");         
        return DriverManager.getConnection(url, userID, password);
//        return DriverManager.getConnection(url);
    }
    
    /*Insert your other code right after this comment*/
   
    /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
    private final String serverName = "localhost";
    private final String dbName = "Project_PRJ";
    private final String portNumber = "5011";
    private final String userID = "sa";
    private final String password = "123456";
}
class Testing{
    public static void main(String[] args) {
            DBcontext db = new DBcontext();
            Connection con = null;  
            try {
             con = db.getConnection();
                System.out.println("Successed");
        } catch (Exception e) {
                System.out.println(e.getMessage());
        }
    }
    
}