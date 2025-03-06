/** 
 * Singleton Pattern Example1
 * Problem Scenario:

* Suppose you are developing a Salesforce application for a large organization with multiple departments, 
* each using different email notification settings. Your current approach involves hard-coding email notification 
* configurations within various classes and triggers. However, this decentralized approach leads to code duplication,
* inconsistent settings, and difficulties in managing changes to email notifications across the application.



Solution using Singleton Pattern in Apex:

To address this problem, you can implement a Singleton pattern to create a EmailNotificationSettings class in Apex. 
This class centralizes email notification configurations and ensures 
that there’s only one instance of these settings, providing a global point of access.

*/

public with sharing class EmailNotificationSettings {

    private static EmailNotificationSettings instance;

    private EmailNotificationSettings() {

    }

    public static EmailNotificationSettings getInstance() {

        if(instance == null) {
            instance = new EmailNotificationSettings();
        }
        return instance;
    }

    public String emailTemplate {get;private set;}
    public List<String> recipients {get;private set;}

    public void setEmailNotification(String template, List<String> recipientsList) {
        this.emailTemplate = template;
        this.recipients = recipientsList;
    }

}