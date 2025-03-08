/**
 * Example of Decorator Design Pattern
 */
public with sharing class PeporeniPizza extends PizzaDecorator{
    public PeporeniPizza(IPizza pizza) {
        super(pizza);
    }
    public override void preparePizza(){
        this.pizza.preparePizza();
        System.debug('Adding Peperoni Toppings');
    }
}