package partypay.grails



import org.junit.*
import grails.test.mixin.*

@TestFor(ConcourseController)
@Mock(Concourse)
class ConcourseControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/concourse/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.concourseInstanceList.size() == 0
        assert model.concourseInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.concourseInstance != null
    }

    void testSave() {
        controller.save()

        assert model.concourseInstance != null
        assert view == '/concourse/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/concourse/show/1'
        assert controller.flash.message != null
        assert Concourse.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/concourse/list'

        populateValidParams(params)
        def concourse = new Concourse(params)

        assert concourse.save() != null

        params.id = concourse.id

        def model = controller.show()

        assert model.concourseInstance == concourse
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/concourse/list'

        populateValidParams(params)
        def concourse = new Concourse(params)

        assert concourse.save() != null

        params.id = concourse.id

        def model = controller.edit()

        assert model.concourseInstance == concourse
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/concourse/list'

        response.reset()

        populateValidParams(params)
        def concourse = new Concourse(params)

        assert concourse.save() != null

        // test invalid parameters in update
        params.id = concourse.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/concourse/edit"
        assert model.concourseInstance != null

        concourse.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/concourse/show/$concourse.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        concourse.clearErrors()

        populateValidParams(params)
        params.id = concourse.id
        params.version = -1
        controller.update()

        assert view == "/concourse/edit"
        assert model.concourseInstance != null
        assert model.concourseInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/concourse/list'

        response.reset()

        populateValidParams(params)
        def concourse = new Concourse(params)

        assert concourse.save() != null
        assert Concourse.count() == 1

        params.id = concourse.id

        controller.delete()

        assert Concourse.count() == 0
        assert Concourse.get(concourse.id) == null
        assert response.redirectedUrl == '/concourse/list'
    }
}
