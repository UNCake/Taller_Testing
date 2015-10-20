package testingpractice


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EstudianteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Estudiante.list(params), model: [estudianteInstanceCount: Estudiante.count()]
    }

    def show(Estudiante estudianteInstance) {
        respond estudianteInstance
    }

    def numeroDeInstancias() {
        println Estudiante.getAll().size()
        return Estudiante.getAll().size()
    }

    def create() {
        respond new Estudiante(params)
    }

    @Transactional
    def save(Estudiante estudianteInstance) {
        if (estudianteInstance == null) {
            notFound()
            return
        }

        if (estudianteInstance.hasErrors()) {
            respond estudianteInstance.errors, view: 'create'
            return
        }

        estudianteInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'estudiante.label', default: 'Estudiante'), estudianteInstance.id])
                redirect estudianteInstance
            }
            '*' { respond estudianteInstance, [status: CREATED] }
        }
    }

    def edit(Estudiante estudianteInstance) {
        respond estudianteInstance
    }

    @Transactional
    def update(Estudiante estudianteInstance) {
        if (estudianteInstance == null) {
            notFound()
            return
        }

        if (estudianteInstance.hasErrors()) {
            respond estudianteInstance.errors, view: 'edit'
            return
        }

        estudianteInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Estudiante.label', default: 'Estudiante'), estudianteInstance.id])
                redirect estudianteInstance
            }
            '*' { respond estudianteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Estudiante estudianteInstance) {

        if (estudianteInstance == null) {
            notFound()
            return
        }

        estudianteInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Estudiante.label', default: 'Estudiante'), estudianteInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'estudiante.label', default: 'Estudiante'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
