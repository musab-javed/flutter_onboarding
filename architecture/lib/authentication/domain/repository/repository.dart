abstract class DomainRepository {
  Future<void> login();
  Future<void> signup();
}


class DomainRepositoryImplementation extends DomainRepository{
  @override
  Future<void> login() {
    /*

    login Logic for domain layer used by presentation layer  
    
    */
  }

  @override
  Future<void> signup() {
    /*

    sign-up Logic for domain layer used by presentation layer  
    
    */
  }

}