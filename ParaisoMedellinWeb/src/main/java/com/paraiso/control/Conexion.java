package com.paraiso.control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class Conexion {
    private static final String JDBC_URL="jdbc:mysql://localhost:3306/base?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=UTC&useSSL=false";
    private static final String JDBC_USER="root";
    private static final String JDBC_PASSWORD="root";
    private static BasicDataSource dataSource;
    
    public static DataSource getDataSource(){
        if(dataSource==null){
            dataSource = new BasicDataSource();
            dataSource.setUrl(JDBC_URL);
            dataSource.setUsername(JDBC_USER);
            dataSource.setPassword(JDBC_PASSWORD);
            dataSource.setInitialSize(50);
        } return dataSource;
    }
    
    public static Connection getConnection() throws SQLException{
        return getDataSource().getConnection();
    }
    
    public static void Close(ResultSet rs){
        try{
            rs.close();
        } catch(Exception e){
            e.printStackTrace(System.out);
        }
    }
    
    public static void Close(Connection conn){
        try{
            conn.close();
        } catch(Exception e){
            e.printStackTrace(System.out);
        }
    }
    
    public static void Close(PreparedStatement stmt){
        try{
            stmt.close();
        } catch(Exception e){
            e.printStackTrace(System.out);
        }
    }
    
}
