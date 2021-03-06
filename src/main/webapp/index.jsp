<%--
  Created by IntelliJ IDEA.
  User: caleb
  Date: 27/06/2022
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        video{
            position: fixed;
            min-width: 100%;
            min-height: 100%;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
            z-index: -1;
        }
    </style>
</head>

<body>

    <div class="modal-fullscreen-sm-down text-center w-75 mt-5 rounded align-content-center ">
        <div class="col-sm-14 " style="margin-left: 500px" >
                <div class="mb-3">
                    <img class="mb-4 mt-4" src="Inicio_Sesion/avion.png" alt=" " width="230" height="230">
                    <p class="text-center" style="color: blue; font-size: 25px" ><b>Bienvenido TeleViajero</b></p>
                    <video src="https://static.videezy.com/system/resources/previews/000/036/212/original/I059.mp4" autoplay="true" muted="true" loop="true" poster="Inicio_Sesion/fondo.jpg"></video>


                    <form method="post" action="<%=request.getContextPath()%>/loginServlet?action=login">

                        <div class="mb-3 mt-3 ms-4 me-4">
                            <input name="email" type="text" class="form-control form-control-user" placeholder="Correo PUCP">
                        </div>
                        <div class="mb-3 mt-3 ms-4 me-4">
                            <input name="password" type="password" class="form-control" placeholder="Contrase??a">
                        </div>
                        <% if (request.getParameter("erroresp") != null) { %>
                        <div class="text-danger mb-2">No eres de la fibra</div>
                        <%}%>
                        <% if (request.getParameter("error") != null) { %>
                        <div class="text-danger mb-2">Error en usuario o contrase??a</div>
                        <%}%>
                        <% if (request.getParameter("registro") != null) { %>
                        <div class="text-info mb-2">Cuenta creada con ??xito</div>
                        <%}%>
                        <div class="mb-3 mt-4">
                            <button type="submit" class="btn btn-primary btn-user btn-block">
                                Ingresar
                            </button>
                        </div>

                    </form>

                    <div class="mb-1">
                        <span><a href="<%=request.getContextPath()%>/loginServlet?action=registro" style="color: lightcyan">Soy nuevo y quiero registrarme</a></span>
                    </div>
                    <div>
                        <br>
                    </div>

                </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->


</body>
</html>
