/**
 * Example of Chain of responsibility Pattern
 */
public with sharing class ValidationHandler extends AbstractHandler{

    public override String handle(Request request) {
        if(String.isBlank(request.reqData) || String.isEmpty(request.reqData)) return 'Invalid request data';
        return super.handle(request);
    }
}