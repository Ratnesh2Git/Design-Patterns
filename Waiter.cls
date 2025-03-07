/**
 * Abstract Design Pattern
 */
public with sharing class Waiter {
  private IChef foodFactory;
  public Waiter(String preference) {
    if (preference == 'Veg') {
      foodFactory = new VegChef();
    } else if (preference == 'Non-Veg') {
      foodFactory = new NonVegChef();
    }
  }

  public IPizza getPizza() {
    return foodFactory.preparePizza();
  }
  public Iburger getBurger() {
    return foodFactory.prepareBurger();
  }
}
