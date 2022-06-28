package com.example.lab10_20190923_20175557_20186137.Daos;

import com.example.lab10_20190923_20175557_20186137.Beans.BCostociudad;
import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;
import com.example.lab10_20190923_20175557_20186137.Beans.BViaje;
import com.example.lab10_20190923_20175557_20186137.Beans.Bseguro;

import java.sql.*;
import java.util.ArrayList;

public class empresaDaos extends BaseDao{
    public ArrayList<BViaje> listadoViaje(BUsuario codigo){
        ArrayList<BViaje> listaViaje = new ArrayList<>();
        try {
            String sql = "select  v.idviaje as \"idviaje\", v.fecha_reserva, v.fecha_viaje, ciu.ciudad as \"ciudad de origen\",\n" +
                    "ci.ciudad as \"ciudad de destino\", se.seguro, v.cantidad_tickets as \"numero boletos\",\n" +
                    "round(v.cantidad_tickets*co.costo) as \"costo total\"\n" +
                    "from viaje v inner join seguro se on (v.seguro_idseguro=se.idseguro)\n" +
                    "inner join costosciudad co on (co.idcostosciudad=v.idcostosciudad)\n" +
                    "inner join ciudad ciu on (ciu.idciudad = co.idciudad_origen)\n" +
                    "inner join ciudad ci on (ci.idciudad = co.idciudad_destino)\n" +
                    "where v.usuario_codigopucp = ?;";
            Connection conn = this.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            pstmt.setString(1, codigo.getCodigoPucp());
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
    //AÑADIR VIAJES
    private static String sql_crearViaje="insert into viaje (usuario_codigopucp,fecha_reserva, fecha_viaje, cantidad_tickets, idcostosciudad, \n" +
            "seguro_idseguro)\n" +
            "values (?,now(), ?, ?,?,?);";

    public ArrayList<Bseguro> listadoSeguros(Bseguro bseguro){
        ArrayList<Bseguro> listaSeguros = new ArrayList<>();
        try {
            String sql = "select seguro from seguro;";
            Connection conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()){
                Bseguro se = new Bseguro();
                se.setSeguro(rs.getString(1));

                listaSeguros.add(se);
            }
        } catch (SQLException e){
            throw new RuntimeException(e);
        }
        return listaSeguros;
    }
    public ArrayList<BCostociudad> listadoCostos(BCostociudad costociudad){
        ArrayList<BCostociudad> listaCostos = new ArrayList<>();
        try {
            String sql = "select concat(ci.ciudad, '-> ',ciu.ciudad) as \"pasajes\",  co.costo as \"costo\" from costosciudad co\n" +
                    "inner join ciudad ci on (co.idciudad_origen = ci.idciudad)\n" +
                    "inner join ciudad ciu on (co.idciudad_destino = ciu.idciudad)";
            Connection conn = this.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()){
                BCostociudad co = new BCostociudad();
                co.setDestinatarios(rs.getString(1));
                co.setCosto(rs.getDouble(2));
                listaCostos.add(co);
            }
        } catch (SQLException e){
            throw new RuntimeException(e);
        }
        return listaCostos;
    }
    public void crearViaje(BViaje viaje){
        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql_crearViaje)
        ) {
            pstmt.setString(1, viaje.getCodido_pucp());
            pstmt.setString(2, viaje.getFecha_reserva());
            pstmt.setString(3, viaje.getFecha_viaje());
            pstmt.setInt(4, viaje.getCantidad_tickets());
            pstmt.setInt(5, viaje.getIdcostos_ciudad());
            pstmt.setInt(6, viaje.getIdseguro());

            pstmt.executeUpdate();
        } catch (SQLException error) {
            error.printStackTrace();
        }
    }
}
