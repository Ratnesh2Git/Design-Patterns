/**
 * Abstract Design Pattern
 */
public with sharing class NonVegChef implements IChef {
  public Iburger prepareBurger() {
    return new NonVegBurger();
  }

  public IPizza preparePizza() {
    return new NonVegPizza();
  }
}
