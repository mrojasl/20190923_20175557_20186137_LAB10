package com.example.lab10_20190923_20175557_20186137.Servlet;
import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;
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
import java.util.ArrayList;
public class viajesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
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
