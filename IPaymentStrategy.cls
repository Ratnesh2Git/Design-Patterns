/**
 * Strategy Design Pattern Example 1
 */

public interface IPaymentStrategy {
  Boolean processPayment(Decimal amount);
}
