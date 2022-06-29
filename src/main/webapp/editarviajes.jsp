<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 29/06/2022
  Time: 02:50 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.lab10_20190923_20175557_20186137.Beans.BViaje" %>
<%@ page import="com.example.lab10_20190923_20175557_20186137.Beans.BCostociudad" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
  <head>
    <head>
      <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/512/207/207052.png">
      <meta charset="utf-8" />
      <meta
              name="viewport"
              content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
      />
      <title>Editar Viajes</title>
      <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
      <link
              href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap"
              rel="stylesheet"
      />
      <link rel="stylesheet" href="assets/css/estilos.css" />
      <script
              src="https://kit.fontawesome.com/5733880de3.js"
              crossorigin="anonymous"
      ></script>
    </head>
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
                    <label class="form-label" for="seguro"
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

                  <button type="submit" class="btn btn-tele">Editar Viaje</button>

                  </body>
</html>
