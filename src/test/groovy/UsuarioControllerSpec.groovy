


import grails.test.mixin.*
import spock.lang.*
import testingpractice.Usuario
import testingpractice.UsuarioController

@TestFor(UsuarioController)
@Mock(Usuario)
class UsuarioControllerSpec extends Specification {
    def "test numeroDeInstancias" () {
        setup:
        def ctrl = new UsuarioController()
        def u1 = new Usuario(nombre: "Juan", apellido: "Perez", edad: 18, genero: "M", cedula: 1)
        def u2 = new Usuario(nombre: "Carlos", apellido: "Perez", edad: 18, genero: "M", cedula: 2)
        def u3 = new Usuario(nombre: "Miguel", apellido: "Perez", edad: 18, genero: "M", cedula: 3)

        //u1.save()
        //u2.save()
        //u3.save()

        //expect:
        //ctrl.numeroDeInstancias() == 3



    }
}
