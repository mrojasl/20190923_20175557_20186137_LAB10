<%@ page import="com.example.lab10_20190923_20175557_20186137.Beans.BViaje" %><%--
  Created by IntelliJ IDEA.
  User: caleb
  Date: 29/06/2022
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listaViaje" scope="request" type="java.util.ArrayList<com.example.lab10_20190923_20175557_20186137.Beans.BViaje>" />
<jsp:useBean id="teleco" scope="request" type="com.example.lab10_20190923_20175557_20186137.Beans.BUsuario" />



<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link href="css/bootstrap.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/header_principal/css/ct-navbar.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/header_principal/css/pe-icon-7-stroke.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/header_principal/css/bootstrap.css" />


    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />
    <link href="css/ct-navbar.css" rel="stylesheet" />

    <!--     Font Awesome     -->
    <!--<link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">-->

    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <style>
        .fa-heart{
            color: #F74933;
        }
        .space-100{
            height: 100px;
            display: block;
        }
        pre.prettyprint{
            background-color: #ffffff;
            border: 1px solid #999;
            margin-top: 20px;
            padding: 20px;
            text-align: left;
        }
        .atv, .str{
            color: #05AE0E;
        }
        .tag, .pln, .kwd{
            color: #3472F7;
        }
        .atn{
            color: #2C93FF;
        }
        .pln{
            color: #333;
        }
        .com{
            color: #999;
        }
    </style>
    <title>
        main
    </title>
</head>

<body>
<div id="navbar-full">
    <div id="navbar">
        <!--
         navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange
         -->
        <nav class="navbar <%if(teleco.getStatus().equalsIgnoreCase("normal")){%>
         navbar-ct-blue
         <%} else if (teleco.getStatus().equalsIgnoreCase("silver")){%>
         navbar-ct-silver
           <%} else if (teleco.getStatus().equalsIgnoreCase("gold")){%>
           navbar-ct-gold
           <%} else if (teleco.getStatus().equalsIgnoreCase("platinum")){%>
           navbar-ct-black
           <%}%>




         navbar-fixed-top navbar-transparent" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand navbar-brand-logo" href="">
                        <div class="logo">
                            <img src="header_principal/Inicio_Sesion/logo2.png" alt="" height="60px" width="60px">
                        </div>
                        <div class="brand"> Tele Viajero </div>
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="javascript:void(0);" data-toggle="search" class="hidden-xs">
                                <i class="pe-7s-search"></i>
                                <p>Search</p>
                            </a>
                        </li>
                        <li>
                            <a>
                                <i class="pe-7s-angle-down-circle"></i>
                                <p><%=teleco.getStatus()%></p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="pe-7s-user"></i>
                                <p><%=teleco.getNombre()%> <%=teleco.getApellido()%><b class="caret"></b></p>
                            </a>
                            <ul class="dropdown-menu">

                                <li><a href="#">Cerrar Sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-right navbar-search-form" role="search">
                        <div class="form-group">
                            <input type="text" value="" class="form-control" placeholder="Search...">
                        </div>
                    </form>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="blurred-container">
            <div class="img-src" style="background-image: url('Inicio_Sesion/fondo.jpg')"></div>
        </div>
    </div><!--  end navbar -->

</div> <!-- end menu-dropdown -->

<div class="main">
    <div class="container tim-container" style="max-width:800px; padding-top:100px">
        <h1 class="text-center">Aquí podrás visualizar todos tus viajes...<br>
        </h1>





        <div class="pb-5 pt-4 px-3 titlecolor">
        </div>
        <div class="tabla">
            <table class="table table-dark table-transparent table-hover">
                <thead>
                    <th>ID</th>
                    <th>Fecha de Reserva</th>
                    <th>Fecha de Viaje</th>
                    <th>Ciudad Origen</th>
                    <th>Ciudad Destino</th>
                    <th>Empresa de seguros</th>
                    <th>Numero de Boletos</th>
                    <th>Costo Total</th>
                </thead>
                <%
                    for (BViaje viaje : listaViaje) {
                %>
                <tr>
                    <td><%=viaje.getIdviaje()%>
                    </td>
                    <td><%=viaje.getFecha_reserva()%>
                    </td>
                    <td><%=viaje.getFecha_viaje()%>
                    </td>
                    <td><%=viaje.getCiudadOrigen()%>
                    </td>
                    <td><%=viaje.getCiudadDestino()%>
                    </td>
                    <td><%=viaje.getSeguro()%>
                    </td>
                    <td><%=viaje.getCantidad_tickets()%>
                    </td>
                    <td><%=viaje.getCostoTotal()%>
                    </td>


                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </div>
    <section class="vh-100">
        <div class="container py-4 h-100">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-lg-9 col-xl-7">
                    <div
                            class="card shadow-2-strong card-registration"
                            style="border-radius: 15px"
                    >
                        <div
                                class="card-header"
                                style="background-color: #e72d4b; color: white"
                        >
                            <h4 class="my-2">Añadir Viajes</h4>
                        </div>
                        <div class="card-body p-4 p-md-5">
                            <form method="POST"
                                  action="<%=request.getContextPath()%>/viajesServlet?action=crear">
                                <div class="row">
                                    <div class="col-md-6 mb-1">
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="fecha_reserva">Fecha de
                                                Reserva</label>
                                            <input name="fecha_reserva"
                                                   type="date"
                                                   id="fecha_reserva"
                                                   class="form-control"
                                                   placeholder="aaaa-mm-dd"/>
                                        </div>

                                    </div>
                                    <div class="form-outline mb-4">
                                        <label class="form-label" for="fecha_viaje">Fecha de Viaje</label>
                                        <input name="fecha_viaje"
                                               type="date"
                                               id="fecha_viaje"
                                               class="form-control"
                                               placeholder="aaaa-mm-dd"/>
                                    </div>

                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="idciudad_origen">Ciudad Origen</label>
                                    <input name="idciudad_origen"
                                           type="text"
                                           id="idciudad_origen"
                                           class="form-control"
                                           placeholder="Ingrese Ciudad Origen"/>
                                </div>
                                <div class="form-outline mb-4">
                                    <label class="form-label" for="idciudad_destino">Ciudad Destino</label>
                                    <input name="idciudad_destino"
                                           type="text"
                                           id="idciudad_destino"
                                           class="form-control"
                                           placeholder="Ingrese Ciudad Destino"/>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label"
                                    >Empresa de Seguros</label
                                    >
                                    <select
                                            class="frm-field required sect"
                                    >
                                        <option disabled="disabled" selected="true">Seleccionar</option>
                                        <option>Rimac</option>
                                        <option>Pacifico</option>
                                        <option>La Positiva</option>
                                        <option>Seguro Internacional</option>
                                        <option>Otro</option>
                                    </select>
                                </div>


                                <div class="form-outline mb-4">
                                    <label class="form-label" for="cantidad_tickets">Numero de Boletos</label>
                                    <input name="cantidad_tickets"
                                           type="number"
                                           id="cantidad_tickets"
                                           class="form-control"
                                           placeholder="Ingrese numero"/>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="idcostos_ciudad">Costo Total</label>
                                    <input name="idcostos_ciudad"
                                           type="number"
                                           id="idcostos_ciudad"
                                           class="form-control"
                                           placeholder="Ingrese numero"/>
                                </div>

                                <br>
                                <button type="submit" class="btn btn-tele">Añadir Viaje</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>






        <div class="col-md-12">
            <br>
            <div class="space-100"></div>
            <div class="row">
                <div class="col-sm-4"></div>

                <div class="col-sm-4"></div>
            </div>
            <div class="space-100"></div>
            <p class="text-center">Copyright &copy; 2022, made with Marcelo, Ray and Caleb <i class="fa fa-heart"></i> for a Lab10.</p>
            <!-- end container -->
        </div>
        <!-- end main -->
    </div>

</div>

</body>

<script src="header_principal/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="header_principal/js/bootstrap.js" type="text/javascript"></script>

<script src="header_principal/js/ct-navbar.js"></script>


</html>
