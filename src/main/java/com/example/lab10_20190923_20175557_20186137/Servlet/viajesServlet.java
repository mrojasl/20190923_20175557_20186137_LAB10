package com.example.lab10_20190923_20175557_20186137.Servlet;
import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;
import com.example.lab10_20190923_20175557_20186137.Beans.BViaje;
import com.example.lab10_20190923_20175557_20186137.Daos.empresaDaos;
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
        switch (action){
            case "lista_viaje":
                String codigopucp = request.getParameter("id_pucp");
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
            case "eliminarViaje":
                if (request.getParameter("codigo_pucp") != null) {
                    String codigo_pucp = request.getParameter("codigo_pucp");


                    ArrayList<BViaje> emp = empresaDaos.listadoViaje(codigo_pucp);

                    if (emp != null) {
                        empresaDaos.eliminarViaje(codigo_pucp);
                    }
                }

                response.sendRedirect("viajesServlet");
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
                viaje.setIdcostos_ciudad(Integer.parseInt(request.getParameter("id_costos")));
                viaje.setIdseguro(Integer.parseInt(request.getParameter("id_seguro")));
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
