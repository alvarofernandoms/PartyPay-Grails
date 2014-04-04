package partypay.grails

class Person extends User{

	String email	
	String cpf
	String rg
	String address
	String postalCode

    static constraints = {
    	email(email:true, blank: false, nullable: false)
    	cpf(cpf:true, blank: false, nullable: false)
    	postalCode(cep:true)
    }
}
