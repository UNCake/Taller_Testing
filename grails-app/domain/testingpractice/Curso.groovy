package testingpractice

class Curso {

    long codigo
    String nombre
    int creditos
    String descripcion


    static belongsTo = [profesor: Profesor]

    static constraints = {
        codigo unique: true
        nombre size: 4..47
        creditos min: 1, max: 8
        descripcion blank: false, nullable: false, minSize: 10
    }
}
