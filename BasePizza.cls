/**
 * Example of Decorator Design Pattern
 */
public with sharing class BasePizza implements IPizza{

    public void preparePizza() {
        System.debug('Base Pizza Prepared');
    }
}