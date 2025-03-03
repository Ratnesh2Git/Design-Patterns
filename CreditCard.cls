public with sharing class CreditCard implements IPaymentService {
  public Boolean submitPayment() {
    System.debug('Submitting Payment using Credit Card...');
    return true;
  }
}
