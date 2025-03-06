/**
 * Singleton Pattern Example1
 */

public with sharing class EmailNotificationSettingsController {
  public EmailNotificationSettingsController() {
    EmailNotificationSettings emailSettings = EmailNotificationSettings.getInstance();
    List<String> departmentRecipients = new List<String>{ 'department1' };
    emailSettings.setEmailNotification(
      'Standard Email Template',
      departmentRecipients
    );

    String template = emailSettings.emailTemplate;
    List<String> recipients = emailSettings.recipients;
  }
}
