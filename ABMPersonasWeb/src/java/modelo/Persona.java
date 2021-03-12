package modelo;

public class Persona {
    private int id;
    private String nombre;
    private String apellido;
    private int edad;
    private EstadoCivil estadoCivil;

    public Persona() {
    }

    
    public Persona(int id, String nombre, String apellido, int edad, EstadoCivil estadoCivil) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.estadoCivil = estadoCivil;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public EstadoCivil getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(EstadoCivil estadoCivil) {
        this.estadoCivil = estadoCivil;
    }
    
    public void setIdEstadoCivil(int id) {
        estadoCivil = new EstadoCivil(id, "");
    }
    
    public int getIdEstadoCivil() {
        return estadoCivil.getId();
    }
    
    public String getNombreCompleto() {
        return nombre + " " + apellido;
    }
    
    @Override
    public String toString() {
        return "Persona{" + "id=" + id + ", nombre=" + nombre +
                ", apellido=" + apellido + ", edad=" + edad + 
                ", estado civil=" + estadoCivil.getNombre()  + '}';
    }
    
}
