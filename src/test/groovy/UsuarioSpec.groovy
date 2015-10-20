

import grails.test.mixin.TestFor
import org.apache.tomcat.jni.User
import spock.lang.Specification
import testingpractice.Usuario

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Usuario)
class UsuarioSpec extends Specification {

    static young, bad, old
    static ArrayList<Usuario> userList


    def setup() {
        young = new Usuario(nombre: "Juan", apellido: "Perez", edad: 18, genero: "M", cedula: 10101010)
        old = new Usuario(nombre: "Nastienka", apellido: "Kowalewski", edad: 50, genero: "F", cedula: 1)
        bad = new Usuario(nombre: "J"*60, apellido: "P", edad: 7, genero: "J", cedula: 0)
        userList = new ArrayList<>()
        userList.add(young)
        userList.add(old)
        userList.add(bad)

    }

    def cleanup() {
    }

    void "test something"() {
    }
    def "test name length" () {
        expect:
        young.nombre.length() >= 3 && young.nombre.length()<= 50
        old.nombre.length() >= 3 && old.nombre.length()<= 50
        !(bad.nombre.length() >= 3 && bad.nombre.length()<= 50)
    }
    def "test surname length" () {
        expect:
        young.apellido.length() >= 3 && young.apellido.length()<= 50
        old.apellido.length() >= 3 && old.apellido.length()<= 50
        !(bad.apellido.length() >= 3 && bad.apellido.length()<= 50)
    }

    def "test age" () {
        expect:
        young.edad >= 18
        old.edad >= 18
        bad.edad < 18
    }

    def "test gender" () {
        expect:
        young.genero == 'M' || young.genero == 'F'
        old.genero == 'M' || old.genero == 'F'
        !(bad.genero == 'M' || bad.genero == 'F')
    }

    def "check document" () {
        setup:
        def q1 = userList.findAll {it.cedula == young.cedula}
        def q2 = userList.findAll {it.cedula == old.cedula}
        def q3 = userList.findAll {it.cedula == bad.cedula}

        expect:
        young.cedula > 0
        old.cedula > 0
        bad.cedula <= 0
        q1.size() == 1
        q2.size() == 1
        q3.size() == 1
    }
}
