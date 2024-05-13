public with sharing class ToLowerCaseSolution {
    public List<String> standardizeEmails(List<String> emails) {
        Set<String> uniqueEmails = new Set<String>();
        for (String email : emails) {
            if (email == null) {
                uniqueEmails.add(null);
            } else {
                uniqueEmails.add(email.toLowerCase());
            }
        }
        return new List<String>(uniqueEmails);
    }
}
