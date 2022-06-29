<%--
  Created by IntelliJ IDEA.
  User: caleb
  Date: 29/06/2022
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link href="css/bootstrap.css" rel="stylesheet" />

    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />
    <link href="css/ct-navbar.css" rel="stylesheet" />

    <!--     Font Awesome     -->
    <!--<link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">--!>

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
</head>

<body>
<div id="navbar-full">
    <div id="navbar">
        <!--
         navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange
         -->
        <nav class="navbar navbar-ct-silver navbar-fixed-top navbar-transparent" role="navigation">

            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand navbar-brand-logo" href="http://www.creative-tim.com">
                        <div class="logo">
                            <img src="Inicio_Sesion/logo2.png">
                        </div>
                        <div class="brand"> Tele Viajero </div>
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">


                        <li>
                            <a>
                                <i class="pe-7s-angle-down-circle"></i>
                                <p>Status</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="pe-7s-user"></i>
                                <p>Nombre Completo <b class="caret"></b></p>
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

</body>

<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>

<script src="js/ct-navbar.js"></script>


</html>
