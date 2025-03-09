/**
 * Example of Chain of responsibility Pattern
 */
public abstract class AbstractHandler implements Ihandler{

    private Ihandler nextHandler;
    
    public Ihandler setNext(Ihandler handler) {
        this.nextHandler=handler;
        return handler;
    }

    public virtual String handle(Request request) {
        if(this.nextHandler != null) {
            return this.nextHandler.handle(request);
        }else {
            return '';
        }
    }

}