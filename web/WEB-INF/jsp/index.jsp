<%-- 
    Document   : agregarEmpleado
    Created on : 24-oct-2019, 18:41:13
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agrega Empleados</title>
    </head>
    <body>
        <h1>Agregar Empleado</h1>
        <form>
            <div class="form-group">
                <label for="clave">Clave</label>
                <input type="number" class="form-control" id="exampleInputEmail1"  placeholder="Clave de Empleado">
                
            </div>
            
            <div class="form-group">
                <label for="nombre">Nombre de Empleado</label>
                <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Nombre">
            </div>
            
              <div class="form-group">
                <label for="nombre">Sueldo</label>
                <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Nombre">
            </div>
           
            <button type="submit" class="btn btn-primary" onclick="location.href='/index.htm'">Guardar</button>
        </form>
    </body>
</html>
