public with sharing class DebitCard implements IPaymentService {
  public Boolean submitPayment() {
    System.debug('Submitting Payment using Debit Card...');
    return true;
  }
}
