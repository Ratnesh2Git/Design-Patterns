/**
 * Example of Chain of responsibility Pattern
 */
public with sharing class Request {


    public Boolean IsLoggedIn {get;set;}
    public Boolean canOrder {get;set;}
    public String reqData {get;set;}

    public Request(Boolean IsLoggedIn, Boolean canOrder, String reqData) {
        this.IsLoggedIn = IsLoggedIn;
        this.canOrder = canOrder;
        this.reqData = reqData;
    }
}