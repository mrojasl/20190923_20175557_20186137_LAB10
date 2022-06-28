<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 28/06/2022
  Time: 08:55 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Beans.BViaje" %>
<%@ page import="Beans.BCostociudad" %>
<%@ page import="com.example.lab10_20190923_20175557_20186137.Beans.BViaje" %>
<%@ page import="com.example.lab10_20190923_20175557_20186137.Beans.BCostociudad" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <html>
        <jsp:include page="cabecera.jsp">
            <jsp:param name="title" value="Menu de humanos"/>
        </jsp:include>
        <head>
            <title>Pagina Principal</title>
        </head>
        <body>
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
            <jsp:include page="/static/scripts.jsp"/>
        </body>
    </html>
</html>
