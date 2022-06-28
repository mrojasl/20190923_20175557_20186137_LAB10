package com.example.lab10_20190923_20175557_20186137.Daos;

import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;

import java.sql.*;
import java.util.ArrayList;

public class userDao extends BaseDao{
    public BUsuario validarUsuarioPassword(String email, String password) {

        BUsuario bUsuario = null;

        String sql = "SELECT codigopucp,correopucp,password from usuario WHERE correopucp = ? AND password = sha2(?,256)";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            try (ResultSet rs = pstmt.executeQuery();) {
                if(rs.next()){
                    String usuarioCodigo = rs.getString(1);
                    bUsuario = this.obtenerUsuario(usuarioCodigo);
                }
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return bUsuario;
    }

    public BUsuario obtenerUsuario(String usuarioCodigo){
        BUsuario bUsuario = null;

        String sql = "SELECT * from usuario WHERE codigopucp = ?";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            pstmt.setString(1, usuarioCodigo);

            try (ResultSet rs = pstmt.executeQuery();) {
                while(rs.next()){
                    bUsuario = new BUsuario();
                    bUsuario.setCodigoPucp(rs.getString(1));
                    bUsuario.setNombre(rs.getString(2));
                    bUsuario.setApellido(rs.getString(3));
                    bUsuario.setEdad(rs.getInt(4));
                    bUsuario.setCorreoPucp(rs.getString(5));
                    bUsuario.setPassword(rs.getString(6));
                    bUsuario.setIdespecialidad(rs.getInt(7));
                    bUsuario.setStatus(rs.getString(8));

                }
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return bUsuario;
    }
}
