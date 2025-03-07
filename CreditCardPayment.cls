/**
 * Part of Strategy Design Pattern Example 1
 */

public with sharing class CreditCardPayment implements IPaymentStrategy {
  public Boolean processPayment(Decimal amount) {
    System.debug('In the credit card payment process ');
    return true;
  }
}
