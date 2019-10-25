/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Conexion.Conexion;
import Model.Empleado;
import java.text.ParseException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author Marco
 */
@Controller
public class empleadoController {

    Conexion con = new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.Conectar());

    ModelAndView nav = new ModelAndView();

    @RequestMapping("listaEmpleados.htm")
    public ModelAndView listEmpleados() {
        String query = "SELECT * FROM empleados WHERE activo=1";
        List datos = this.jdbctemplate.queryForList(query);
        nav.addObject("lista", datos);
        nav.setViewName("listaEmpleados");
        return nav;
    }

    @RequestMapping("/agregarEmpleado.htm")
    public ModelAndView nuevoEmpleado() {
        return new ModelAndView("/agregarEmpleado", "command", new Empleado());
    }

    @RequestMapping(value = "/guardarEmpleado.htm", method = RequestMethod.POST)
    public ModelAndView guardar(@RequestParam("clave") Integer clave, @RequestParam("nombre") String nombre,
            @RequestParam("sueldo") String sueldo) {
        String query = "insert into empleados (clave,nombre,sueldo) values (?, ?, ?)";
    //  Empleado empleado =new Empleado();
        this.jdbctemplate.update(query,clave,nombre,Float.parseFloat(sueldo));
        System.out.println(query);
        nav.setViewName("redirect:/listaEmpleados.htm");
        return nav;

    }
    
     @RequestMapping("/editarEmpleado.htm")
    public ModelAndView editaEmpleado() {
        return new ModelAndView("/editarEmpleado", "command", new Empleado());
    }
    
    
  @RequestMapping(value= "/guardarEditarEmpleado.htm",method = RequestMethod.POST)
    public ModelAndView editarEmpleado(@RequestParam("nombre") String nombre,
            @RequestParam("sueldo") String sueldo,@RequestParam(value= "clave_e") int clave){
       //  String query = "UPDATE empleados SET (nombre="+nombre+",sueldo="+sueldo+") WHERE clave="+clave;
        this.jdbctemplate.update("UPDATE empleados SET nombre=?,sueldo=? WHERE clave=?", nombre,Float.parseFloat(sueldo),clave);
        nav.setViewName("redirect:/listaEmpleados.htm");
        return nav;
    }
    


    @RequestMapping(value = "/eliminarEmpleado.htm", method = RequestMethod.GET)
    public ModelAndView borrar(@RequestParam("clave") Integer clave) {
        String query = "UPDATE empleados SET activo=0 WHERE clave=?";
        this.jdbctemplate.update(query,clave);
        nav.setViewName("redirect:/listaEmpleados.htm");
        return nav;

    }
  
      

}
