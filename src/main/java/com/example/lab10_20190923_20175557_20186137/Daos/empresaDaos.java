package com.example.lab10_20190923_20175557_20186137.Daos;

import com.example.lab10_20190923_20175557_20186137.Beans.BCostociudad;
import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;
import com.example.lab10_20190923_20175557_20186137.Beans.BViaje;
import com.example.lab10_20190923_20175557_20186137.Beans.Bseguro;

import java.sql.*;
import java.util.ArrayList;

public class empresaDaos extends BaseDao{
    public ArrayList<BViaje> listadoViaje(String codigo){
        ArrayList<BViaje> listaViaje = new ArrayList<>();
        String sql = "select v.idviaje,v.fecha_reserva,v.fecha_viaje,co.ciudad,cd.ciudad,s.seguro,\n" +
                "v.cantidad_tickets,(v.cantidad_tickets*cc.costo)\n" +
                "from viaje v inner join costosciudad cc on (v.idcostosciudad=cc.idcostosciudad)\n" +
                "inner join seguro s on (s.idseguro=v.seguro_idseguro) inner join ciudad co\n" +
                "on(co.idciudad=cc.idciudad_origen) inner join ciudad cd on (cd.idciudad=cc.idciudad_destino)\n" +
                "inner join usuario u on (u.codigopucp=v.usuario_codigopucp) where u.codigopucp=?";

        try (Connection conn = this.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);){

            pstmt.setString(1,codigo);

            try (ResultSet rs = pstmt.executeQuery();) {
                while (rs.next()) {
                    BViaje vi = new BViaje();
                    vi.setIdviaje(rs.getInt(1));
                    vi.setFecha_reserva(rs.getString(2));
                    vi.setFecha_viaje(rs.getString(3));
                    vi.setCiudadOrigen(rs.getString(4));
                    vi.setCiudadDestino(rs.getString(5));
                    vi.setSeguro(rs.getString(6));
                    vi.setCantidad_tickets(rs.getInt(7));
                    vi.setCostoTotal(rs.getDouble(8));

                    listaViaje.add(vi);
                }
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

    public ArrayList<Bseguro> listadoSeguros(){
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
    public ArrayList<BCostociudad> listadoCostos(){
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
            pstmt.setInt(5, viaje.getIdCostos_ciudad());
            pstmt.setInt(6, viaje.getIdSeguro());

            pstmt.executeUpdate();
        } catch (SQLException error) {
            error.printStackTrace();
        }
    }
    public void eliminarViaje(String idUser, String id) {
        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("DELETE FROM viaje WHERE usuario_codigopucp = ? and idviaje = ?");) {

            pstmt.setString(1, idUser);
            pstmt.setString(2, id);
            pstmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public int getEightDigitsNumber() {
        double eightDigits = 10000000 + Math.random() * 90000000;
        return (int) eightDigits;
    }
}
