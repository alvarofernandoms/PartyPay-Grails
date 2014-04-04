package partypay.grails

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])

class CommentsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [commentsInstanceList: Comments.list(params), commentsInstanceTotal: Comments.count()]
    }

    def create() {
        [commentsInstance: new Comments(params)]
    }

    def save() {
        def commentsInstance = new Comments(params)
        if (!commentsInstance.save(flush: true)) {
            render(view: "create", model: [commentsInstance: commentsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'comments.label', default: 'Comments'), commentsInstance.id])
        redirect(action: "show", id: commentsInstance.id)
    }

    def show(Long id) {
        def commentsInstance = Comments.get(id)
        if (!commentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comments.label', default: 'Comments'), id])
            redirect(action: "list")
            return
        }

        [commentsInstance: commentsInstance]
    }

    def edit(Long id) {
        def commentsInstance = Comments.get(id)
        if (!commentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comments.label', default: 'Comments'), id])
            redirect(action: "list")
            return
        }

        [commentsInstance: commentsInstance]
    }

    def update(Long id, Long version) {
        def commentsInstance = Comments.get(id)
        if (!commentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comments.label', default: 'Comments'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (commentsInstance.version > version) {
                commentsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'comments.label', default: 'Comments')] as Object[],
                          "Another user has updated this Comments while you were editing")
                render(view: "edit", model: [commentsInstance: commentsInstance])
                return
            }
        }

        commentsInstance.properties = params

        if (!commentsInstance.save(flush: true)) {
            render(view: "edit", model: [commentsInstance: commentsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'comments.label', default: 'Comments'), commentsInstance.id])
        redirect(action: "show", id: commentsInstance.id)
    }

    def delete(Long id) {
        def commentsInstance = Comments.get(id)
        if (!commentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comments.label', default: 'Comments'), id])
            redirect(action: "list")
            return
        }

        try {
            commentsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'comments.label', default: 'Comments'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'comments.label', default: 'Comments'), id])
            redirect(action: "show", id: id)
        }
    }
}
