public with sharing class AnonymousApex {
  public AnonymousApex() {


    Waiter waiter = new Waiter('Veg');
    IPizza pizza = waiter.getPizza();
    System.debug(pizza.eat());
    Iburger burger = Waiter.getBurger();
    System.debug(burger.eat());
}
}
new AnonymousApex();

