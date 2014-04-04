package partypay.grails

import org.springframework.dao.DataIntegrityViolationException

class ConcourseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [concourseInstanceList: Concourse.list(params), concourseInstanceTotal: Concourse.count()]
    }

    def create() {
        [concourseInstance: new Concourse(params)]
    }

    def save() {
        def concourseInstance = new Concourse(params)
        if (!concourseInstance.save(flush: true)) {
            render(view: "create", model: [concourseInstance: concourseInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'concourse.label', default: 'Concourse'), concourseInstance.id])
        redirect(action: "show", id: concourseInstance.id)
    }

    def show(Long id) {
        def concourseInstance = Concourse.get(id)
        if (!concourseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'concourse.label', default: 'Concourse'), id])
            redirect(action: "list")
            return
        }

        [concourseInstance: concourseInstance]
    }

    def edit(Long id) {
        def concourseInstance = Concourse.get(id)
        if (!concourseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'concourse.label', default: 'Concourse'), id])
            redirect(action: "list")
            return
        }

        [concourseInstance: concourseInstance]
    }

    def update(Long id, Long version) {
        def concourseInstance = Concourse.get(id)
        if (!concourseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'concourse.label', default: 'Concourse'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (concourseInstance.version > version) {
                concourseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'concourse.label', default: 'Concourse')] as Object[],
                          "Another user has updated this Concourse while you were editing")
                render(view: "edit", model: [concourseInstance: concourseInstance])
                return
            }
        }

        concourseInstance.properties = params

        if (!concourseInstance.save(flush: true)) {
            render(view: "edit", model: [concourseInstance: concourseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'concourse.label', default: 'Concourse'), concourseInstance.id])
        redirect(action: "show", id: concourseInstance.id)
    }

    def delete(Long id) {
        def concourseInstance = Concourse.get(id)
        if (!concourseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'concourse.label', default: 'Concourse'), id])
            redirect(action: "list")
            return
        }

        try {
            concourseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'concourse.label', default: 'Concourse'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'concourse.label', default: 'Concourse'), id])
            redirect(action: "show", id: id)
        }
    }
}
