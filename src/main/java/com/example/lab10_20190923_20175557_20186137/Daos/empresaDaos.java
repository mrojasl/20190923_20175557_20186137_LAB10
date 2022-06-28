package com.example.lab10_20190923_20175557_20186137.Daos;

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
}
