
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/*@author imac*/
public class ModeloMySql implements Modelo {
    
    private static final String ALL_QUERY = "SELECT * FROM Productos";
    private static final String BYID_QUERY = "SELECT * FROM Productos WHERE code = ?";

    @Override
    public List<Producto> getProductos() {
        List<Producto> productos = new ArrayList<>();
        try(Connection con = Conexion.getConnection(); PreparedStatement ps = con.prepareStatement(ALL_QUERY); ResultSet rs = ps.executeQuery();) {
            while(rs.next()){
                productos.add(rsToProducto(rs));
            }
        } catch(SQLException e){
            throw new RuntimeException("Error de SQL", e);
        }
        return productos;
    }

    @Override
    public Producto getProducto(int code) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int addProducto(Producto p) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int updateProducto(Producto p) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int removeProducto(int code) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    private Producto rsToProducto(ResultSet rs) throws SQLException{
        int code = rs.getInt(1);
        String image = rs.getString(2);
        String nombre = rs.getString(3);
        String marca = rs.getString(4);
        Double precio = rs.getDouble(5);
        int stock = rs.getInt(6);
        int categoryId = rs.getInt(7);
        return new Producto(code, image, nombre, marca, precio, stock, categoryId);
    }
    
}
