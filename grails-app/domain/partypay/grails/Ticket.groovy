package partypay.grails

class Ticket {

	String title
	String description
	Float ticketValue

	
    static constraints = {
    	title blank: false, nullable: false
    	description blank: false, nullable: false
    	ticketValue blank: false, nullable: false
    }
}
