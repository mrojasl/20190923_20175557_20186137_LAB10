package com.example.lab10_20190923_20175557_20186137.Daos;

import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;
import com.example.lab10_20190923_20175557_20186137.Beans.BViaje;

import java.sql.*;
import java.util.ArrayList;

public class empresaDaos extends BaseDao{
    public ArrayList<BViaje> listadoViaje(){
        ArrayList<BViaje> listaViaje = new ArrayList<>();
        try {
            String sql = "select  v.idviaje as \"idviaje\", v.fecha_reserva, v.fecha_viaje, ciu.ciudad as \"ciudad de origen\",\n" +
                    "ci.ciudad as \"ciudad de destino\", se.seguro, v.cantidad_tickets as \"numero boletos\",\n" +
                    "(v.cantidad_tickets*co.costo) as \"costo total\"\n" +
                    "from viaje v inner join seguro se on (v.seguro_idseguro=se.idseguro)\n" +
                    "inner join costosciudad co on (co.idcostosciudad=v.idcostosciudad)\n" +
                    "inner join ciudad ciu on (ciu.idciudad = co.idciudad_origen)\n" +
                    "inner join ciudad ci on (ci.idciudad = co.idciudad_destino);\n";
            Connection conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()){
                BViaje vi = new BViaje();
                vi.setIdviaje(rs.getInt(1));
                vi.setFecha_reserva(rs.getString(2));
                vi.setFecha_viaje(rs.getString(3));
                vi.setIdciudad(rs.getString(4));
                vi.setIdciudad(rs.getString(5));
                vi.setIdseguro(rs.getInt(6));
                vi.setCantidad_tickets(rs.getInt(7));
                vi.setCostoTotal(rs.getFloat(8));

                listaViaje.add(vi);
            }
        } catch (SQLException e){
            throw new RuntimeException(e);
        }


        return listaViaje;
    }
    private static String sql_crear="insert into usuario (codigopucp,nombre,apellido,correopucp,idespecialidad,password) values \n" +
            "(?,?,?,?,?,?);";
    public void crearUsuario(BUsuario usuario){
        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql_crear)
        ) {
            pstmt.setString(1, usuario.getCodigoPucp());
            pstmt.setString(2, usuario.getNombre());
            pstmt.setString(3, usuario.getApellido());
            pstmt.setString(4, usuario.getCorreoPucp());
            pstmt.setInt(5, usuario.getIdespecialidad());
            pstmt.setString(6, usuario.getPassword());

            pstmt.executeUpdate();
        } catch (SQLException error) {
            error.printStackTrace();
        }
    }
    private static String sql_loguin="select * from usuario where codigopucp=? and password=?;";
    public  boolean loguear(BUsuario usuario) {
        boolean result = false;
        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql_loguin)
        ) {
            pstmt.setString(1, usuario.getCodigoPucp());
            pstmt.setString(2, usuario.getPassword());
            ResultSet rs=pstmt.executeQuery();
            result=rs.next();

        } catch (SQLException error) {
            error.printStackTrace();
        }

        return result;
    }
}
