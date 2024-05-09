List<String> emailsSolution = new List<String>{
    'test@email.com',
    'warreb@cloudcodeacademy.com',
    'marc@salesforce.com'
};

String formattedEmails = TestUtils.formatEmailList(emailsSolution);
System.debug(formattedEmails); // Outputs: ['test@email.com', 'warreb@cloudcodeacademy.com', 'marc@salesforce.com']
