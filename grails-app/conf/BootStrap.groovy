import com.grailway.domain.authenticate.Role
import com.grailway.domain.authenticate.User
import com.grailway.domain.authenticate.UserRole

class BootStrap {

    def init = { servletContext ->
		new Role(authority: 'ROLE_USER').save(failOnError: true, flush: true)
		new Role(authority: 'ROLE_FACEBOOK').save(failOnError: true, flush: true)
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def testUser = new User(username: 'comprotest', enabled: true, password: 'compro')
		testUser.save(flush: true)
		UserRole.create testUser, adminRole, true
    }
    def destroy = {
    }
}
