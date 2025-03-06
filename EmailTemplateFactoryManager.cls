public with sharing class EmailTemplateFactoryManager {
  private IEmailTemplateFactory emailTemplateFactory;
  public EmailTemplate createTemplate(String department) {
    if (department == 'Marketing') {
      emailTemplateFactory = new MarketingEmailTemplateFactory();
    } else if (department == 'Sales') {
      emailTemplateFactory = new SalesEmailTemplateFactory();
    }
    return emailTemplateFactory.createTemplate();
  }
}
