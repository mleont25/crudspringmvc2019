/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Marco
 */
public class Conexion {
    public DriverManagerDataSource Conectar(){
        DriverManagerDataSource nav= new DriverManagerDataSource();
        nav.setDriverClassName("com.mysql.jdbc.Driver");
        nav.setUrl("jdbc:mysql://localhost:3306/msc2019");
        nav.setUsername("root");
        nav.setPassword("");
    
        
        return nav;
    }
}
