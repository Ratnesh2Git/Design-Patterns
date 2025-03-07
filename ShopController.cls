/**
 * Example of Builder Pattern - Main class
 */
public with sharing class ShopController {
  public CellPhone constructSamsungPhone() {
    ICellPhoneBuilder b = new SamsungPhoneBuilder();
    return b.setOS('Android').setCamera(20).getPhone();
  }
}
