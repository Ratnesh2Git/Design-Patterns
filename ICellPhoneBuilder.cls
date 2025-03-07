/**
 * Example of Builder Pattern
 */

public interface ICellPhoneBuilder {
  CellPhone getPhone();
  ICellPhoneBuilder setBattery(Integer battery);
  ICellPhoneBuilder setCamera(Integer camera);
  ICellPhoneBuilder setOS(String os);
  ICellPhoneBuilder setProcessor(String processor);
  ICellPhoneBuilder setScreensize(Double screensize);
}
