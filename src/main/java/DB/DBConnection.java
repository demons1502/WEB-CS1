//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public Connection CreateConnection()  throws Exception{
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber+";databaseName="+dbName;
        if(instance == null || instance.trim().isEmpty())
                url = "jdbc:sqlserver://"+serverName+":"+portNumber+";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url,userID,password);

    }

    private final String serverName = "DESKTOP-M28UA8C";
    private final String dbName="shopping";
    private final String portNumber="1433";
    private final String instance="";
    private final String userID="sa";
    private final String password="123456";
}
