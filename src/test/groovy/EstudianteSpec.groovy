

import grails.test.mixin.TestFor
import spock.lang.Specification
import testingpractice.Estudiante

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Estudiante)
class EstudianteSpec extends Specification {

    static noob, veteran, badmf
    static ArrayList<Estudiante> studentList

    def setup() {
        noob = new Estudiante(semestre: 1, codigoInst: 1)
        veteran = new Estudiante(semestre: 20, codigoInst: 123123)
        badmf = new Estudiante(semestre: 32, codigoInst: 6)
        studentList = new ArrayList<>()
        studentList.add(noob)
        studentList.add(veteran)
        studentList.add(badmf)
    }

    def cleanup() {
    }

    void "test something"() {
    }

    def "semester test" () {
        expect:
        1 <= noob.semestre && noob.semestre <= 20
        1 <= veteran.semestre && veteran.semestre <= 20
        !(1 <= badmf.semestre && badmf.semestre <= 20)
    }
    def "code test" () {
        setup:
        def q1 = studentList.findAll {it.codigoInst == noob.codigoInst}
        def q2 = studentList.findAll {it.codigoInst == veteran.codigoInst}
        def q3 = studentList.findAll {it.codigoInst == badmf.codigoInst}

        expect:
        noob.codigoInst != null && veteran.codigoInst != null && badmf.codigoInst != null
        q1.size() == 1
        q2.size() == 1
        q3.size() == 1

    }

    def "course list test" () {
        /*setup:
        def noob = new Estudiante(semestre: 1, codigoInst: 1)
        def veteran = new Estudiante(semestre: 20, codigoInst: 123123)
        def badmf = new Estudiante(semestre: 32, codigoInst: 6)*/

        expect:
        noob.cursos != null && noob.cursos.size() >= 0
        veteran.cursos != null && veteran.cursos.size() >= 0
        badmf.cursos != null && badmf.cursos.size() >= 0
    }
}
