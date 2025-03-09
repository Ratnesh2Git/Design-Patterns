/**
 * Example of Chain of responsibility Pattern
 */
public interface Ihandler {

    Ihandler setNext(Ihandler hander);
    String handle(Request request);

}