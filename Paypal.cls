public with sharing class Paypal implements IPaymentService {
  public Boolean submitPayment() {
    System.debug('Submitting Payment using Paypal...');
    return true;
  }
}
