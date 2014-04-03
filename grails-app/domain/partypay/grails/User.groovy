package partypay.grails

class User {

	String name
	String email
	String password
	String cpf
	String rg
	String address
	String postalCode
    
    static constraints = {
    	name blank: false, nullable: false
    	email(email:true, blank: false, nullable: false)
    	password (password:true, blank: false, nullable: false)
    	cpf(cpf:true, blank: false, nullable: false)
    	postalCode(cep:true, blank: false, nullable: false)

    }
    
    	 static transients = ['confirmPassword']
}
