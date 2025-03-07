/**
 * Example of Builder Pattern
 */

public with sharing class CellPhone {
  private String os;
  private String processor;
  private Double screensize;
  private Integer battery;
  private Integer camera;
  private String brand;

  public CellPhone(
    String os,
    String processor,
    Double screensize,
    Integer battery,
    Integer camera,
    String brand
  ) {
    this.os = os;
    this.processor = processor;
    this.screensize = screensize;
    this.battery = battery;
    this.camera = camera;
    this.brand = brand;
  }

  public String getSpecification() {
    return os +
      '__' +
      processor +
      '__' +
      screensize +
      '__' +
      battery +
      '__' +
      camera;
  }
}
