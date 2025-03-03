/** Dependency Injection Using Factory Pattern */
public with sharing class PaymentFactory {
  public static IPaymentService getPaymentService(
    AcceptedPayments paymentType
  ) {
    switch on paymentType {
      when CREDIT_CARD {
        return new CreditCard();
      }
      when DEBIT_CARD {
        return new DebitCard();
      }
      when CRYPTO {
        return new Crypto();
      }
      when PAYPAL {
        return new Paypal();
      }
    }
    return null;
  }
}
