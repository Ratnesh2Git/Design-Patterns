/**
 * Example of Chain of responsibility Pattern
 * Main class
 * Description => 
 * Chain Of Responsibility => Behavioral Design Pattern => "Let you pass requests along a chain of handlers. Upon recieving a request,
 *  each handler decides either to process the request or to pass it to the next handler in the chain"
 *  => It can be implemented whn you have many things to perform in sequence like Authentication+ Authorization+Validation+Parsing data+store into Database and show on Ui

Example =>
Request => [Authentication handler + Authorization handler + Validation handler] (chain of responsibilities) => ordering system
 */
public with sharing class ChainOfResponsibilityMain {

    Ihandler handler = CORSetup();
    Request request;

    public ChainOfResponsibilityMain() {
        request =  new Request(true, true, '45');
        placeOrder(handler, request);
        //placeOrder(handler, request);
    }

    private void placeOrder(Ihandler handler , Request request) {
        String msg = handler.handle(request);
        if(!String.isEmpty(msg)) {

            System.debug('message is '+ msg);
        } else {
            System.debug('Send to Ordering system');
        }
    }

    private Ihandler CORSetup() {
        Ihandler handler = new AuthenticationHandler();
        handler.setNext(new AuthorizationHandler()).setNext(new ValidationHandler()).setNext(new CacheHandler());
        return handler;
    }

}