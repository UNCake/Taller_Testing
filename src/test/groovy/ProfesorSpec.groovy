

import grails.test.mixin.TestFor
import spock.lang.Specification
import testingpractice.Profesor

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Profesor)
class ProfesorSpec extends Specification {
    static ArrayList<Profesor> teacherList
    static t1, t2, bad, rep
    def setup() {
        t1 = new Profesor(oficina: 1)
        t2 = new Profesor(oficina: 50)
        bad = new Profesor(oficina: 78)
        rep = new Profesor(oficina: 78)
        teacherList = new ArrayList<>()
        teacherList.add(t1)
        teacherList.add(t2)
        teacherList.add(bad)
        teacherList.add(rep)
    }

    def cleanup() {
    }

    def "office test"() {
        setup:
        def q1 = teacherList.findAll {it.oficina == rep.oficina}
        def q2 = teacherList.findAll {it.oficina == t1.oficina}
        def q3 = teacherList.findAll {it.oficina == t2.oficina}

        expect:
        1 <= t1.oficina && t1.oficina <= 50
        1 <= t2.oficina && t2.oficina <= 50
        !(1 <= bad.oficina && bad.oficina <= 50)
        q1.size() > 1
        q2.size() == 1
        q3.size() == 1
    }

    def "course list test" () {
        t1.cursos != null
        t2.cursos != null
        bad.cursos != null
        rep.cursos != null

    }
}

