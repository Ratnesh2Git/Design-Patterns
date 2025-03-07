public with sharing class AnonymousApex {
  public AnonymousApex() {

    IPaymentStrategy strategy = new CreditCardPayment();
    ShoppingCartController cart = new ShoppingCartController(strategy);

    Decimal orderAmount = 150.0;
    Boolean paymentSuccess = cart.checkout(orderAmount);
    System.debug(paymentSuccess);
  }
}
new AnonymousApex();

