/**
 * Example of Decorator Design Pattern
 */
public with sharing class OnionPizza extends PizzaDecorator{
    public OnionPizza(IPizza pizza) {
        super(pizza);
    }
    public override void preparePizza(){
        this.pizza.preparePizza();
        System.debug('Adding Onion Toppings');
    }
}