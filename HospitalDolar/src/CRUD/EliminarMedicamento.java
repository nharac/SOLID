/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CRUD;

import Conexiones.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ESTUDIANTE
 */
public class EliminarMedicamento {
    public void BuscarElementoAEliminar(int ID) throws SQLException{
        String query = "SELECT * FROM medicamentos WHERE id = ?";
        
        try{
            
        
        Connection conexion = ConexionBD.getConexion();
            PreparedStatement ps = conexion.prepareStatement(query);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                query = "UPDATE medicamentos SET Estado = 'Inactivo' WHERE ID = ?";
                ps = conexion.prepareStatement(query);
                ps.setInt(1, ID);
                ps.executeUpdate();
                System.out.println("Usuario " + ID + " desactivado correctamente");
                
            }
        }catch(SQLException e){
            System.out.println("Error al eliminar el usuario: Error de Consulta");
        }
                
    }
}
