package partypay.grails

class Event{

	String nameEvent
	String description
	Date dateEvent = new Date()
	String adressEvent
	String latitude
	String longitude
	static hasMany = [ticket:Ticket]

    static constraints = {
    	nameEvent blank: false, nullable: false
    	dateEvent blanK: false, nullable: false
    	latitude display: false
    	longitude display: false
    }
}
