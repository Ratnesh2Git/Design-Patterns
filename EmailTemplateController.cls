public with sharing class EmailTemplateController {
  public static void generateTemplate() {
    EmailTemplateFactoryManager factoryManager = new EmailTemplateFactoryManager();
    EmailTemplate et = factoryManager.createTemplate('Sales');
    EmailTemplate es = factoryManager.createTemplate('Marketing');
    System.debug(et);
    System.debug(es);
  }
}
