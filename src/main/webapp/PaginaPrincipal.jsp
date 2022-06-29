<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 28/06/2022
  Time: 08:55 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.lab10_20190923_20175557_20186137.Beans.BViaje" %>
<%@ page import="com.example.lab10_20190923_20175557_20186137.Beans.BCostociudad" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listaViaje" scope="request" type="java.util.ArrayList<com.example.lab10_20190923_20175557_20186137.Beans.BViaje>" />
<html>

    <html>

        <head>
            <link rel="shortcut icon" href="https://cdn-icons.flaticon.com/png/512/826/premium/826070.png?token=exp=1656523939~hmac=95e0835542059253ef913f926ef83145">
            <title>Pagina Principal</title>
        </head>
        <body>

            <h3>Buscador:</h3>
            <input class="form-control col-md-3 light-table-filter" data-table="order-table" type="text"
                   placeholder="Search..">


                <div class="pb-5 pt-4 px-3 titlecolor">
                    <div class="col-lg-6">
                        <h1 class='text-light'>Lista de Viajes</h1>
                    </div>
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
                            <td><%=viaje.getCantidad_tickets()%>
                            </td>
                            <td><%=viaje.getIdcostos_ciudad()%>
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
        </body>
    </html>
</html>

