package testingpractice

class Profesor extends Usuario{

    int oficina

    static hasMany = [cursos:Curso]

    static constraints = {
        oficina min: 0, max: 50,unique: true
    }
}
