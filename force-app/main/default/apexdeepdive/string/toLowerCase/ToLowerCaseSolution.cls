public class StringUtils {
    public Set<String> standardizeEmails(List<String> emails) {
        Set<String> uniqueEmails = new Set<String>();
        for (String email : emails) {
            uniqueEmails.add(email.toLowerCase());
        }
        return uniqueEmails;
    }
}