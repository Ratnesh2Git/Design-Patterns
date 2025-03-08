public with sharing class Anonymous {
    public Anonymous() {

        IPizza pizza = new OnionPizza(new PeporeniPizza(new BasePizza()));
        pizza.preparePizza();

        

    }
}

new Anonymous();