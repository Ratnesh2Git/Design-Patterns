/**
 * Example of Builder Pattern
 */
public with sharing class SamsungPhoneBuilder implements ICellPhoneBuilder {
  private String brand = 'Samsung';
  private String os;
  private String processor;
  private Double screensize;
  private Integer battery;
  private Integer camera;

  public CellPhone getPhone() {
    return new CellPhone(os, processor, screensize, battery, camera, brand);
  }

  public ICellPhoneBuilder setCamera(Integer camera) {
    this.camera = camera;
    return this;
  }

  public ICellPhoneBuilder setOS(String os) {
    this.os = os;
    return this;
  }
  public ICellPhoneBuilder setProcessor(String processor) {
    this.processor = processor;
    return this;
  }
  public ICellPhoneBuilder setScreensize(Double screensize) {
    this.screensize = screensize;
    return this;
  }
  public ICellPhoneBuilder setBattery(Integer battery) {
    this.battery = battery;
    return this;
  }
}
