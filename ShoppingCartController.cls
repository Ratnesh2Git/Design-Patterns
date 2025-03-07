/**
 * main class of Strategy Design Pattern Example 1
 */
public with sharing class ShoppingCartController {
  private IPaymentStrategy strategy;

  public ShoppingCartController(IPaymentStrategy strategy) {
    this.strategy = strategy;
  }

  public Boolean checkout(Decimal amount) {
    return strategy.processPayment(amount);
  }
}
