package com.example.lab10_20190923_20175557_20186137.Servlet;

import com.example.lab10_20190923_20175557_20186137.Beans.BUsuario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet",""})
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action= request.getParameter("action")==null ? "index": request.getParameter("action");
        RequestDispatcher requestDispatcher;

        switch (action){
            case "index":
                requestDispatcher= request.getRequestDispatcher("index.jsp");
                requestDispatcher.forward(request,response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher;

        BUsuario bUsuario = new BUsuario();

        String emailInput = request.getParameter("email");
        String passwordInput = request.getParameter("password");





        requestDispatcher= request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request,response);

    }
}
