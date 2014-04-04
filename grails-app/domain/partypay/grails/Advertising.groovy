package partypay.grails

class Advertising {

	String nameContractor
	String advertisingMessage
	Float value
	Date startDate = new Date()
	Date endDate = new Date()


    static constraints = {
    	nameContractor blank: false, nullable: false
    	startDate blank: false, nullable: false
    }
}
