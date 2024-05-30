public class ToLowerCaseSolution {
    public Set<String> standardizeEmails(List<String> emails) {
        for (String email : emails) {
            email.toLowerCase();
        }
        return emails;
    }
}
