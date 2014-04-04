#encoding: utf-8

Feature: Send mail API
  In order to send mail
  As a user
  I need to call the send mail API
  
  Scenario: Send mail with all supported fields
    Given the following parameters:
    | api_user | alvin.fajardo           |
    | api_key  | sendgrid                |
    | to       | alvin.fajardo@gmail.com |
    | toname   | Alvin Fajardo           |
    | x-smtpapi | {"category": "newuser"} |
    | subject  | test                    |
    | text     | test body               |
    | from     | alvin.fajardo@gmail.com |
    | bcc      | alvin.fajardo@gmail.com |
    | fromname | Alvin                    |
    | replyto  | alvin.fajardo@gmail.com  |
    | date     | Thu, 1 Apr 2014 12:00:00 |
    | files[test.txt] | attachments/test.txt |
    | content  | 1234 |
    | headers  | {"X-Accept-Language": "en", "X-Mailer": "MyApp"} |
    When I call the API 
    Then the email is sent
