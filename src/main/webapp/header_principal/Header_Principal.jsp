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

<%
    response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
    response.addHeader("Pragma", "no-cache");
    response.addDateHeader ("Expires", 0);
%>

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
                        <div class="logo" style="border: hidden">
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

                                <li><a href="<%=request.getContextPath()%>/loginServlet?action=logout">Cerrar Sesión</a></li>
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
        <h1 class="text-center">Viajes<br>
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
                    <th></th>
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
                    <td><%=Math.round(viaje.getCostoTotal()*100.0)/100.0%>
                    </td>
                    <td>
                        <a href=""><button type="button" class="btn btn-outline-dark btn-sm">Editar</button></a>
                    </td>


                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </div>
    <div style="background-color:
        <%if(teleco.getStatus().equalsIgnoreCase("normal")){%>
            lightskyblue
        <%} else if (teleco.getStatus().equalsIgnoreCase("silver")){%>
            silver
        <%} else if (teleco.getStatus().equalsIgnoreCase("gold")){%>
            goldenrod
        <%} else if (teleco.getStatus().equalsIgnoreCase("platinum")){%>
            gray
        <%}%>


">
        <form method="post">
            <div id="crear" class="container tab-pane active">
                <div class="col-lg-6 bg-indigo text-white ui-icon-background">
                    <div class="p-5">
                        <h3 class="fw-normal mb-5">Crear Viaje</h3>


                        <div class="row">
                            <div class="col-md-6 mb-4 pb-2">

                                <div class="form-outline form-white">
                                    <input type="date" id="fecha_reserva" class="form-control form-control-lg">
                                    <label class="form-label" for="fecha_reserva" style="margin-left: 0px;">Fecha de reserva</label>
                                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 58.4px;"></div><div class="form-notch-trailing"></div></div></div>

                            </div>
                            <div class="col-md-6 mb-4 pb-2">

                                <div class="form-outline form-white">
                                    <input type="date" id="fecha_viaje" class="form-control form-control-lg">
                                    <label class="form-label" for="fecha_viaje" style="margin-left: 0px;">Fecha de viaje</label>
                                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 40px;"></div><div class="form-notch-trailing"></div></div></div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-4 pb-2">

                                <div class="form-outline form-white">
                                    <select type="text" id="origen" class="form-control form-control-lg">
                                        <option selected></option>
                                        <option value="1">Two</option>
                                        <option value="2">Three</option>
                                        <option value="3">Four</option>
                                    </select>
                                    <label class="form-label" for="origen" style="margin-left: 0px;">Ciudad Origen</label>
                                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 58.4px;"></div><div class="form-notch-trailing"></div></div></div>

                            </div>
                            <div class="col-md-6 mb-4 pb-2">

                                <div class="form-outline form-white">
                                    <select type="text" id="destino" class="form-control form-control-lg">
                                        <option selected></option>
                                        <option value="1">Two</option>
                                        <option value="2">Three</option>
                                        <option value="3">Four</option>
                                    </select>
                                    <label class="form-label" for="destino" style="margin-left: 0px;">Ciudad Destino</label>
                                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 58.4px;"></div><div class="form-notch-trailing"></div></div></div>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-4 pb-2">

                                <div class="form-outline form-white">
                                    <select type="text" id="seguros" class="form-control form-control-lg">
                                        <option selected></option>
                                        <option value="1">Two</option>
                                        <option value="2">Three</option>
                                        <option value="3">Four</option>
                                    </select>
                                    <label class="form-label" for="seguros" style="margin-left: 0px;">Empresa de Seguros</label>
                                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 58.4px;"></div><div class="form-notch-trailing"></div></div></div>

                            </div>
                            <div class="col-md-3 mb-4 pb-2">
                                <div class="form-outline form-white">
                                    <input type="text" id="boletos" class="form-control form-control-lg">
                                    <label class="form-label" for="boletos" style="margin-left: 0px;">Número de Boletos</label>
                                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 40px;"></div><div class="form-notch-trailing"></div></div></div>

                            </div>
                            <div class="col-md-3 mb-4 pb-2">
                                <div class="form-outline form-white">
                                    <input type="text" id="Costo" class="form-control form-control-lg">
                                    <label class="form-label" for="costo" style="margin-left: 0px;">Costo total</label>
                                    <div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 40px;"></div><div class="form-notch-trailing"></div></div></div>

                            </div>

                        </div>
                        <button type="button" class="btn btn-light btn-lg" style="margin-bottom: fill; color:#000000; background-color: #ffecb5"   data-mdb-ripple-color="dark">Crear</button>
                    </div>
                </div>
            </div>
        </form>
    </div>






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
