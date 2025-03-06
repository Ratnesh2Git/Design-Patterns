public with sharing class AnonymousApex {
  public AnonymousApex() {
    // // Testing Dependency Injection Using Constructor
    // ShoppingCart sc = new ShoppingCart(new CreditCard());
    // sc.pay();

    // // Testing Dependency Injection Using Factory Pattern
    // ShoppingCart sc1 = new ShoppingCart(AcceptedPayments.CRYPTO);
    // sc1.pay();

    // ShoppingCart sc2 = new ShoppingCart(AcceptedPayments.DEBIT_CARD);
    // sc2.pay();

    // // Testing Dependency Injection Using Method\Field
    // ShoppingCart sc3 = new ShoppingCart();
    // sc3.setPayment(new Paypal());
    // sc3.pay();

    EmailTemplateController.generateTemplate();
  }
}
new AnonymousApex();

