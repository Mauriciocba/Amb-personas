package gestores;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.EstadoCivil;
import modelo.Persona;

public class GestorPersonas {
    // Esta clase es la única que va a tener código del paquete java.sql.
    // Va ofrecer métodos para cada operacion con la BD
    // Esos métodos van a recibir parámetros y retornar resultados con objetos
    // únicamente del modelo.
    private String CONN = "jdbc:sqlserver://localhost;databaseName=Prueba";
    private String USER = "sa";
    private String PASS = "sa2K17docker";

    public GestorPersonas() {
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GestorPersonas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    public void agregar(Persona nueva) {
    
        try {
            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            PreparedStatement st = conn.prepareStatement("insert into Personas(Nombre, Apellido, Edad, IdEstadoCivil) values(?,?,?,?)");
            st.setString(1,nueva.getNombre());
            st.setString(2,nueva.getApellido());
            st.setInt(3,nueva.getEdad());
            st.setInt(4,nueva.getEstadoCivil().getId());
            
            st.executeUpdate();
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorPersonas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public ArrayList<Persona> obtenerTodos() {
    
        ArrayList<Persona> lista = new ArrayList<>();
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select p.*, ec.Nombre as NombreEC  from Personas p join EstadosCiviles ec on p.IdEstadoCivil = ec.Id");
            
            while(rs.next()) {
                int id = rs.getInt("Id");
                String nombre = rs.getString("Nombre");
                String apellido = rs.getString("Apellido");
                int edad = rs.getInt("Edad");
                int idEstadoCivil = rs.getInt("IdEstadoCivil");
                String nombreEstadoCivil = rs.getString("NombreEC");
                
                EstadoCivil ec = new EstadoCivil(idEstadoCivil, nombreEstadoCivil);
                Persona p = new Persona(id, nombre, apellido, edad, ec);

                lista.add(p);
            }
            
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorPersonas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
    
    public ArrayList<Persona> getPersonas() {
    
        ArrayList<Persona> lista = new ArrayList<>();
        try {

            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
        
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select p.*, ec.Nombre as NombreEC  from Personas p join EstadosCiviles ec on p.IdEstadoCivil = ec.Id");
            
            while(rs.next()) {
                int id = rs.getInt("Id");
                String nombre = rs.getString("Nombre");
                String apellido = rs.getString("Apellido");
                int edad = rs.getInt("Edad");
                int idEstadoCivil = rs.getInt("IdEstadoCivil");
                String nombreEstadoCivil = rs.getString("NombreEC");
                
                EstadoCivil ec = new EstadoCivil(idEstadoCivil, nombreEstadoCivil);
                Persona p = new Persona(id, nombre, apellido, edad, ec);

                lista.add(p);
            }
            
            st.close();

            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(GestorPersonas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
    public ArrayList<EstadoCivil> obtenerEstadosCiviles() {
        ArrayList<EstadoCivil> lista = new ArrayList<>();
        
        try {
            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from EstadosCiviles");
            // Si el select devuelve una única fila, en lugar de while, se usa un if
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                
                EstadoCivil ec = new EstadoCivil(id, nombre);
                lista.add(ec);
            }
            
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(GestorPersonas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }
    
    
    public ArrayList<EstadoCivil> getEstadosCiviles() {
        ArrayList<EstadoCivil> lista = new ArrayList<>();
        
        try {
            Connection conn = DriverManager.getConnection(CONN,USER,PASS);
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from EstadosCiviles");
            // Si el select devuelve una única fila, en lugar de while, se usa un if
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                EstadoCivil ec = new EstadoCivil(id, nombre);
                lista.add(ec);
            }
            
            rs.close();
            st.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(GestorPersonas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }
}
