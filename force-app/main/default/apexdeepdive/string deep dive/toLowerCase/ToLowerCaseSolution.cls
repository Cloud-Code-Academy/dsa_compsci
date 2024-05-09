public with sharing class ToLowerCaseSolution {
    public List<String> standardizeEmails(List<String> emails) {
        Set<String> uniqueEmails = new Set<String>();
        for (String email : emails) {
            uniqueEmails.add(email.toLowerCase());
        }
        return new List<String>(uniqueEmails);
    }
}
