import partypay.grails.*
 
class BootStrap {
 
    def init = { servletContext ->
        if (!User.count()) {
            createData()
        }
    }
    def destroy = {
    }
 
    private void createData() {
        def userRole = new Authority(authority: 'ROLE_ADMIN').save()

        String password = 'passwd'
 
 
        [luiz: 'Luiz', alvaro: 'Alvaro', cristiano: 'Cristiano'].each { userName, realName ->
            def user = new User(username: userName, realName: realName, password: password, enabled: true).save()
            UserAuthority.create user, userRole, true
        }
    }
}
