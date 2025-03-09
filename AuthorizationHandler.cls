
/**
 * Example of Chain of responsibility Pattern
 */
public with sharing class AuthorizationHandler extends AbstractHandler{

    public override String handle(Request request) {
        if(!request.canOrder) return 'User does not have access to Ordering System';
        return super.handle(request);
    }
}