public with sharing class MarketingEmailTemplateFactory implements IEmailTemplateFactory {
  public EmailTemplate createTemplate() {
    EmailTemplate template = new EmailTemplate();
    template.Subject = 'Marketing Newsletter';
    template.body = 'Dear Valued Customers...';
    return template;
  }
}
