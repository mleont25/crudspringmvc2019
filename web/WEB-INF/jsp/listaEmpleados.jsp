<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Crud en Sring MVC</title>
    </head>

    <body>



        <div class="container mt-5">
            <div class="card border-info">
                <div class="card-header">
                    <div class="card-body">

                        <table class="table table-hover">

                            <a href="agregarEmpleado.htm" class="btn btn-primary">Agregar</a>
                            <thead>
                            <th>Clave</th>
                            <th>Nombre</th>
                            <th>Sueldo</th>
                            </thead>

                            <c:forEach var="emp" items="${lista}">
                                <tr>

                                    <td>${emp.clave}</td>
                                    <td>${emp.nombre}</td>
                                    <td>${emp.sueldo}</td>
                                    <td>
                                        <a href="editarEmpleado.htm?clave=${emp.clave}&nombre=${emp.nombre}&sueldo=${emp.sueldo}" class="btn btn-warning">Editar</a>
                                        <a href="eliminarEmpleado.htm?clave=${emp.clave}" class="btn btn-danger">Borrar</a>
                                    </td>


                                </tr>
                            </c:forEach>
                        </table>
                    </div>  
                </div> 
            </div>
        </div>

    </body>
</html>
