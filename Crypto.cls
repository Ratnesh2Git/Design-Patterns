public with sharing class Crypto implements IPaymentService {
  public Boolean submitPayment() {
    System.debug('Submitting Payment using Crypto...');
    return true;
  }
}
