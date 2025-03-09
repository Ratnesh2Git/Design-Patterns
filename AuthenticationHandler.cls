/**
 * Example of Chain of responsibility Pattern
 */
public with sharing class AuthenticationHandler extends AbstractHandler{

    public override String handle(Request request) {
        if(!request.IsLoggedIn) return 'Please log in to acccess data';
        return super.handle(request);
    }
}