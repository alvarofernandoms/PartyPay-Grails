package partypay.grails

class Concourse extends Event {

	String challenge
	String prize

    static constraints = {
    	challenge blank: false, nullable: false
    	prize blank: false, nullable: false
    }
}
