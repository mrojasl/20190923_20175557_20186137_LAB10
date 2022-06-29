package com.example.lab10_20190923_20175557_20186137.Servlet;

import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;
import com.example.lab10_20190923_20175557_20186137.Daos.empresaDaos;
import com.example.lab10_20190923_20175557_20186137.Daos.userDao;
import com.mysql.cj.protocol.x.Notice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet",""})
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action= request.getParameter("action")==null ? "index": request.getParameter("action");
        RequestDispatcher requestDispatcher;
        userDao u = new userDao();
        HttpSession session = request.getSession();

        switch (action){
            case "index":
                BUsuario bUsuario = (BUsuario) session.getAttribute("UsuarioLogueado");
                if(bUsuario != null && Integer.parseInt(bUsuario.getCodigoPucp()) != 0){
                    response.sendRedirect(request.getContextPath() + "/viajesServlet");
                } else {
                    requestDispatcher= request.getRequestDispatcher("index.jsp");
                    requestDispatcher.forward(request,response);
                }
                break;
            case "logout":
                session.invalidate();
                response.sendRedirect(request.getContextPath()+"/index.jsp");
            case "registro":
                request.setAttribute("listaEspecialidades", u.listarEspecialidad());
                requestDispatcher= request.getRequestDispatcher("registro.jsp");
                requestDispatcher.forward(request,response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher;
        String action= request.getParameter("action");
        userDao u = new userDao();
        empresaDaos empresaDaos = new empresaDaos();
        switch (action){
            case "login":
                userDao userDao = new userDao();

                String emailInput = request.getParameter("email");
                String passwordInput = request.getParameter("password");
                RequestDispatcher view;

                BUsuario bUsuario = userDao.validarUsuarioPassword(emailInput,passwordInput);
                if (bUsuario != null){
                    HttpSession session = request.getSession();
                    session.setAttribute("userLogueado",bUsuario);
                    session.setMaxInactiveInterval(60*10);

                    String codigo = userDao.obtenerCodigoPorCorreo(emailInput);
                    request.setAttribute("codigopucp", codigo);

                    request.setAttribute("listaViaje", empresaDaos.listadoViaje(codigo));
                    view = request.getRequestDispatcher("PaginaPrincipal.jsp");
                    view.forward(request, response);

                } else {
                    response.sendRedirect(request.getContextPath() + "/loginServlet?error");
                }
                break;
            case "crearUser":
                BUsuario buser = new BUsuario();
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                int edad = Integer.parseInt(request.getParameter("edad"));
                String codigo = request.getParameter("codigo");
                String correo = request.getParameter("correo");
                int especialidad = Integer.parseInt(request.getParameter("especialidad"));
                String contra = request.getParameter("contra");
                buser.setNombre(nombre);
                buser.setApellido(apellido);
                buser.setEdad(edad);
                buser.setCodigoPucp(codigo);
                buser.setCorreoPucp(correo);
                buser.setIdespecialidad(especialidad);
                buser.setPassword(contra);
                u.crearUsuario(buser);

                response.sendRedirect(request.getContextPath() + "/loginServlet?registro");

                break;
        }




    }
}
