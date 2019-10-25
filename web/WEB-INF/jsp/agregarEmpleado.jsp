<%-- 
    Document   : agregarEmpleado
    Created on : 24-oct-2019, 18:41:13
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Agrega Empleados</title>
    </head>
    <body>

        <div class="container mt-5">
            <div class="card border-info">
                <div class="card-header">
                    <div class="card-body">
                        <h1>Agregar Nuevo Empleado</h1><br>

                        <form:form action="guardarEmpleado.htm" method="POST">
                            <div class="form-group col-md-2">
                                <label for="clave">Clave</label>
                                <input type="number" class="form-control" id="clave"name="clave" placeholder="000" min="0">

                            </div>

                            <div class="form-group col-md-4">
                                <label for="nombre">Nombre de Empleado</label>
                                <input type="text" class="form-control"  id="nombre" name="nombre" placeholder="Nombre">
                            </div>

                            <div class="form-group col-md-2">
                                <label for="nombre">Sueldo</label>
                                <input type="text" class="form-control" id="sueldo" name="sueldo"  placeholder="$0" min="100">
                            </div>

                            <div class="form-group col-md-2">

                                <button type="submit" id="btn-ediarEmpleado" name="btn-editarEmpleado" class="btn btn-primary">Guardar</button>
              
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
