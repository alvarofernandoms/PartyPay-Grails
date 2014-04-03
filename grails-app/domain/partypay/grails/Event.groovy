package partypay.grails

class Event {

	String nameEvent
	Date dateEvent
	String adressEvent

    static constraints = {
    	nameEvent blank: false, nullable: false
    }
}
