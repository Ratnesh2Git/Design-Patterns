/**
 * Example of Chain of responsibility Pattern
 */
public with sharing class CacheHandler extends AbstractHandler{

    private static Set<String> cache = new Set<String>();
    public override String handle(Request request) {
        if(cache.contains(request.reqData)) return 'Data Found In Cache';
        cache.add(request.reqData);
        return super.handle(request);
    }
}