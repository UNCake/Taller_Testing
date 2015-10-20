

import grails.test.mixin.TestFor
import spock.lang.Specification
import testingpractice.Curso

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Curso)
class CursoSpec extends Specification {

    static ArrayList<Curso> courseList
    static Curso c1, bad, verbose, rep

    def setup() {
        c1 = new Curso(codigo: 1, nombre: "curso1", creditos: 3, descripcion: "descripcion larga")
        bad = new Curso(codigo: 2, nombre: "cu", creditos: -4, descripcion: "nada")
        verbose = new Curso(codigo: 3, nombre: "curso1curso1curso1curso1curso1curso1curso1curso1curso1curso1curso1curso1curso1curso1curso1curso1", creditos: 8, descripcion: "asdasdasdsadsasxzxc")
        rep = new Curso(codigo: 2, nombre: "curso1", creditos: 3, descripcion: "descripcion larga")
        courseList = new ArrayList<>()
        courseList.add(c1)
        courseList.add(bad)
        courseList.add(verbose)
        courseList.add(rep)
    }

    def cleanup() {
    }

    void "test something"() {
    }

    def "unique codes" () {
        setup:
        def q1 = courseList.findAll {it.codigo == c1.codigo}
        def q2 = courseList.findAll {it.codigo == rep.codigo}

        expect:
        q1.size() == 1
        q2.size() > 1
    }

    def "name test" () {

        expect:
        3 <= c1.nombre.size() && c1.nombre.size() <= 50
        !(3 <= bad.nombre.size() && bad.nombre.size() <= 50)
        !(3 <= verbose.nombre.size() && verbose.nombre.size() <= 50)
    }

    def "credits test" () {

        expect:
        1 <= c1.creditos && c1.creditos <= 5
        !(1 <= bad.creditos && bad.creditos <= 5)
        !(1 <= verbose.creditos && verbose.creditos <= 5)

    }

    def "description test" () {

        expect:
        c1.descripcion.size() >= 10
        !(bad.descripcion.size() >= 10)
    }
}
