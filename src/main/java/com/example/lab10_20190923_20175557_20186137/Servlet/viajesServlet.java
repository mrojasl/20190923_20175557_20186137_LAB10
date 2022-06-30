package com.example.lab10_20190923_20175557_20186137.Servlet;
import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;
import com.example.lab10_20190923_20175557_20186137.Beans.BViaje;
import com.example.lab10_20190923_20175557_20186137.Daos.empresaDaos;
import com.example.lab10_20190923_20175557_20186137.Daos.userDao;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;

@WebServlet(name = "viajesServlet", urlPatterns = {"/viajesServlet"})
public class viajesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "lista_viaje" : request.getParameter("action");
        empresaDaos empresaDaos = new empresaDaos();
        RequestDispatcher view;
        userDao userDao = new userDao();
        switch (action){
            case "editarViaje":

                BUsuario teleco = userDao.obtenerUsuario(request.getParameter("idUser"));
                request.setAttribute("teleco",teleco);
                request.setAttribute("idViaje",Integer.parseInt(request.getParameter("id")));
                view = request.getRequestDispatcher("header_principal/Editar_Viajes.jsp");
                view.forward(request, response);

                break;
            case "lista_viaje":
                String codigopucp = request.getParameter("codigopucp");
                ArrayList<BViaje> usuario = empresaDaos.listadoViaje(codigopucp);
                request.setAttribute("listaViaje", empresaDaos.listadoViaje(codigopucp));
                view = request.getRequestDispatcher("employees/lista.jsp");
                view.forward(request, response);
                break;
            case "crearViaje":
                request.setAttribute("listaSeguros", empresaDaos.listadoSeguros());
                request.setAttribute("listadoCostos", empresaDaos.listadoCostos());
                view =request.getRequestDispatcher("PaginaPrincipal.jsp");
                view.forward(request, response);
                break;
            case "borrarViaje":
                String codigo = request.getParameter("idUser");
                String idViaje = request.getParameter("id");
                empresaDaos.eliminarViaje(codigo,idViaje);

                BUsuario teleco2 = userDao.obtenerUsuario(codigo);

                request.setAttribute("teleco",teleco2);
                request.setAttribute("listaViaje", empresaDaos.listadoViaje(codigo));
                view = request.getRequestDispatcher("header_principal/Header_Principal.jsp");
                view.forward(request, response);
                break;
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "lista_viaje" : request.getParameter("action");
        BViaje viaje;
        empresaDaos empresaDaos = new empresaDaos();

        switch (action){
            case "guardar_viaje":
                viaje = new BViaje();
                viaje.setCodido_pucp(request.getParameter("codigo_pucp"));
                viaje.setFecha_reserva(request.getParameter("fecha_reserva"));
                viaje.setFecha_viaje(request.getParameter("fecha_viaje"));
                viaje.setCantidad_tickets(Integer.parseInt(request.getParameter("cant_tickets")));
                viaje.setIdCostos_ciudad(Integer.parseInt(request.getParameter("id_costos")));
                viaje.setIdSeguro(Integer.parseInt(request.getParameter("id_seguro")));
                empresaDaos.crearViaje(viaje);
                response.sendRedirect("viajesServlet");
        }

      /*  switch (action){
            case "crearUser" ->{
                BUsuario usuario = leerParametrosRequest(request);
                break;
            }
            case "loguin"->{

            }
        }
        /*-- switch (action){
            case "loguearse" ->{
                BUsuario usuario = leerParametrosRequest(request);
                Boolean valor=usuariosDao.loguear(usuario);
                if (valor){
                    BUsuario usuario1=usuariosDao.idUser(usuario);
                    String caso = "";
                    if (usuario1.getUserId()){

                    }
                    switch (caso) {

                    }
                }

            }

        }*/
    }
    public BUsuario leerParametrosRequest(HttpServletRequest request) throws IOException, ServletException {
        String codigo = request.getParameter("codigo");
        String contraseña = request.getParameter("password");

        

        return new BUsuario(codigo ,contraseña);
    }

}
