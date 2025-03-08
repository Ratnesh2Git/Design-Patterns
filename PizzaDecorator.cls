/**
 * Example of Decorator Design Pattern
 */
public virtual class PizzaDecorator implements IPizza {
    protected IPizza pizza;
    protected PizzaDecorator(IPizza pizza) {
        this.pizza = pizza;
    }
    public virtual void preparePizza() {
        pizza.preparePizza();
    }
}