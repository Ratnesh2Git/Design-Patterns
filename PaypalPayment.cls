/**
 * Part of Strategy Design Pattern Example 1
 */
public with sharing class PaypalPayment implements IPaymentStrategy {
  public Boolean processPayment(Decimal amount) {
    System.debug('In the paypal payment process');
    return true;
  }
}
