/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Mario
 */
import java.sql.*;
public class conexionDB {
    public static Connection getConexion(){
    Connection con=null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost/sfix?user=root&password=");
        System.out.println("Conexion hecha");
    }catch(Exception e)   { System.out.println("error "+e);    }
    
    return con;
    }
    
    public static void main(String[] args){
        conexionDB.getConexion();
    
    }
    
}
