package partypay.grails



import org.junit.*
import grails.test.mixin.*

@TestFor(CommentsController)
@Mock(Comments)
class CommentsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/comments/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.commentsInstanceList.size() == 0
        assert model.commentsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.commentsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.commentsInstance != null
        assert view == '/comments/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/comments/show/1'
        assert controller.flash.message != null
        assert Comments.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/comments/list'

        populateValidParams(params)
        def comments = new Comments(params)

        assert comments.save() != null

        params.id = comments.id

        def model = controller.show()

        assert model.commentsInstance == comments
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/comments/list'

        populateValidParams(params)
        def comments = new Comments(params)

        assert comments.save() != null

        params.id = comments.id

        def model = controller.edit()

        assert model.commentsInstance == comments
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/comments/list'

        response.reset()

        populateValidParams(params)
        def comments = new Comments(params)

        assert comments.save() != null

        // test invalid parameters in update
        params.id = comments.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/comments/edit"
        assert model.commentsInstance != null

        comments.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/comments/show/$comments.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        comments.clearErrors()

        populateValidParams(params)
        params.id = comments.id
        params.version = -1
        controller.update()

        assert view == "/comments/edit"
        assert model.commentsInstance != null
        assert model.commentsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/comments/list'

        response.reset()

        populateValidParams(params)
        def comments = new Comments(params)

        assert comments.save() != null
        assert Comments.count() == 1

        params.id = comments.id

        controller.delete()

        assert Comments.count() == 0
        assert Comments.get(comments.id) == null
        assert response.redirectedUrl == '/comments/list'
    }
}
