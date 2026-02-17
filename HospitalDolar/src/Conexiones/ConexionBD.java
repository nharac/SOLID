
package Conexiones;
import java.sql.*;


public class ConexionBD {

    private static final String URL ="jdbc:mysql://localhost:3306/dolar_association";
    private static final String Usuario ="root";
    private static final String Contrasena="";
    
    public static Connection getConexion (){
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e){
            System.err.println("Error: No se encontró el driver de MySQL");
        }        
     try {
         Connection conexion = DriverManager.getConnection(URL,Usuario,Contrasena);
         System.out.println("Ingreso exitoso");
         return conexion;
     }
     catch(SQLException error){
         System.out.println("Conexion fallida");
         error.printStackTrace();
         return null;
     }
        }
    public static void main(String[] args) {
        getConexion();
    }
}
