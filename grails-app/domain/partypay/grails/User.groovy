package partypay.grails

class User {

	transient springSecurityService

	String username
	String password
	String email	
	String cpf
	String rg
	String address
	String postalCode

	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password (password:true, blank: false, nullable: false)
     	email(email:true, blank: false, nullable: false)
    	cpf(cpf:true, blank: false, nullable: false)
    	postalCode(cep:true, blank: false, nullable: false)
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Authority> getAuthorities() {
		UserAuthority.findAllByUser(this).collect { it.authority } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
