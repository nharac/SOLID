
package Conexiones;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {

    private static final String URL ="jdbc:mysql://localhost:3306/dolar_association?useSSL=false&serverTimezone=UTC";
    private static final String Usuario ="root";
    private static final String Contrasena="";
    
    public static Connection getConexion (){
     try {
         Connection conexion =DriverManager.getConnection(URL,Usuario,Contrasena);
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
