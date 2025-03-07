/**
 * Abstract Design Pattern
 */
public with sharing class VegChef implements IChef {
  public Iburger prepareBurger() {
    return new VegBurger();
  }

  public IPizza preparePizza() {
    return new VegPizza();
  }
}
