/*================== Dependency Injection =====> 
Injecting dependency into the main class from outside. The main class
 should not add dependency itself; 
 */
/*
Ex=> 

public with sharing class ShoppingCart {
    private CreditCard cc = new CreditCard();

    public void pay() {
        cc.submitPayment();
    }
  }
*/
/*
This class is having direct dependency with credit card class.
In future, if we have to change the method to some other payment method, then we need to make 
changes in Shopping cart class as well.
This is violating SOLID principles -

1) Class is not testable => Not testable without creating engine class.
2) Class is not extensible => In future if we want to extend it for debit card we need to make changes in shopping cart class as well
3) Single Responsibility => This class is responsible for both instantanting credit card and payment processing.  
4) Lifetime Of Objects (Reusability) => We cannot reuse this class in case we need to change payment method 
to debit card (in case credit card class is no more)
*/

public with sharing class ShoppingCart {
  IPaymentService paymentService;

  @testVisible
  public ShoppingCart() {
  }

  // Dependency Injection using Constructor
  public ShoppingCart(IPaymentService serviceType) {
    this.paymentService = serviceType;
  }

  //Dependency Injection on Field or method;
  public void setPayment(IPaymentService serviceType) {
    this.paymentService = serviceType;
  }

  // Dependency Injection Using Factory Pattern
  public ShoppingCart(AcceptedPayments paymentType) {
    this.paymentService = PaymentFactory.getPaymentService(paymentType);
  }

  public void pay() {
    paymentService.submitPayment();
  }
}
