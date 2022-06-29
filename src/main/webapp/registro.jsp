<%@ page import="com.example.lab10_20190923_20175557_20186137.Beans.BEspecialidad" %>
<%--
  Created by IntelliJ IDEA.
  User: Jon
  Date: 28/06/2022
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listaEspecialidades" type="java.util.ArrayList<com.example.lab10_20190923_20175557_20186137.Beans.BEspecialidad>" scope="request"/>
<html>
  <head>
    <link rel="shortcut icon" href="https://cdn-icons.flaticon.com/png/512/826/premium/826070.png?token=exp=1656523939~hmac=95e0835542059253ef913f926ef83145">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>LAB10</title>

    <!-- Custom fonts for this template-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!--link-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel = "icon" href =
            "https://assets.website-files.com/60b56cdf18d38e15ce088579/60c111551dc75d6dc896a30e_pucp-favicon.png"
          type = "image/x-icon">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!--link--stars-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
      body{
        background-position: center ;
      }
    </style>
  </head>
  <body background ="Inicio_Sesion/fondo.jpg")>
    <div class="modal-fullscreen-sm-down text-center w-75 mt-5 rounded align-content-center ">
      <div class="col-sm-14" style="background-color: black;margin-left: 500px" >
        <div class="mb-3">

          <img class="mb-4 mt-4" src="Inicio_Sesion/logo.png" alt=" " width="230" height="230">
          <p class="text-center" style="color: aliceblue; font-size: 25px" ><b>Registro</b></p>

          <form method="post" action="<%=request.getContextPath()%>/loginServlet?action=crearUser">

            <div class="mb-3 mt-3 ms-4 me-4">
              <input name="nombre" required="required" type="text" class="form-control form-control-user" placeholder="Nombre">
            </div>
            <div class="mb-3 mt-3 ms-4 me-4">
              <input name="apellido" required="required" type="text" class="form-control form-control-user" placeholder="Apellido">
            </div>
            <div class="mb-3 mt-3 ms-4 me-4">
              <input name="edad" required="required" type="number" min="18" max="29" class="form-control" placeholder="Edad">
            </div>
            <div class="mb-3 mt-3 ms-4 me-4">
              <input name="codigo" required="required" type="number" min="10000000" max="99999999" class="form-control form-control-user" placeholder="Codigo PUCP">
            </div>
            <div class="mb-3 mt-3 ms-4 me-4">
              <input name="correo" required="required" type="email" class="form-control form-control-user" placeholder="Correo PUCP">
            </div>
            <div class="mb-3 mt-3 ms-4 me-4">
              <select name="especialidad" class="form-select" id="inputGroupSelect01">
                <%for (BEspecialidad e : listaEspecialidades){%>
                <option value="<%=e.getIdEspecialidad()%>"><%=e.getEspecialidad()%></option>
                <%}%>
              </select>
            </div>
            <div class="mb-3 mt-3 ms-4 me-4">
              <hr>
            </div>
            <div class="mb-3 mt-3 ms-4 me-4">
              <input id="password1" oninput="validarPassword(this.value)" name="contra" required="required" type="password" class="form-control" placeholder="Contraseña">
            </div>
            <div class="mb-3 mt-3 ms-4 me-4">
              <input oninput="matchPassword(this.value)" required="required" type="password" class="form-control" placeholder="Repetir Contraseña">
            </div>

            <div id="mensajePasswordMala" class="text-danger mb-2">La contraseña debe contener mayúsculas, números y carácteres especiales. (8 dígitos mín.)</div>
            <div id="mensajePasswordNoMatch" class="text-danger mb-2">Las contraseñas deben coincidir.</div>



            <div class="mb-3 mt-4">
              <button disabled id="registerButton" type="submit" class="btn btn-primary btn-user btn-block">
                Registrar
              </button>
            </div>

          </form>

          <div>
            <br>
          </div>

        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script>
      let booleanValid;
      let booleanMatch;
      function validarPassword(password){
        let strongPassword = new RegExp('^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$');
        let label = document.getElementById("mensajePasswordMala");
        if (strongPassword.test(password)){
          console.log("bien");
          label.style.display = "none";

          booleanValid = false;
          disableButton(booleanValid);

        } else {
          console.log("mal");
          label.style.display = "block";
          booleanValid = true;
          disableButton(booleanValid);


        }
      }
      function matchPassword(password){
        let passwd = document.getElementById("password1");
        let label = document.getElementById("mensajePasswordNoMatch");

        if (passwd.value===password){
          console.log("iguales");
          label.style.display = "none";

          booleanMatch = false;
          disableButton(booleanMatch);

        } else {
          console.log("diferentes");
          label.style.display = "block";

          booleanMatch = true;
          disableButton(booleanMatch);

        }
      }
      function disableButton(x){
        document.getElementById("registerButton").disabled=x;
      }
    </script>

  </body>
</html>

