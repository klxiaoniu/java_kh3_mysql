import java.sql.*;

public class DbUtil {
    /**
     * 取得数据库的连接
     *
     * @return 一个数据库的连接
     */
    public static Connection getConnection() {
        Connection conn = null;
        try {
            //初始化驱动类com.mysql.jdbc.Driver
            /*Class.forName("com.mysql.jdbc.Driver");
            2022-12-15: 不用手动加载，提示 Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'.
             The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.*/
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/student?characterEncoding=UTF-8", "root", "4513");
            //该类就在 mysql-connector-java-5.0.8-bin.jar中,如果忘记了第一个步骤的导包，就会抛出ClassNotFoundException
        /*} catch (ClassNotFoundException e) {
            e.printStackTrace();*/
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    /**
     * 封装三个关闭方法
     * @param pstmt
     */
    public static void close(PreparedStatement pstmt){
        if(pstmt != null){						//避免出现空指针异常
            try{
                pstmt.close();
            }catch(SQLException e){
                e.printStackTrace();
            }

        }
    }

    public static void close(Connection conn){
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
    }

    public static void close(ResultSet rs){
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
    }

}
