public with sharing class SalesEmailTemplateFactory implements IEmailTemplateFactory {
  public EmailTemplate createTemplate() {
    EmailTemplate template = new EmailTemplate();
    template.Subject = 'Sales Promotions';
    template.body = 'Hello Sales team ...';
    return template;
  }
}
