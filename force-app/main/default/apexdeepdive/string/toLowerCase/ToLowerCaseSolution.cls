public class ToLowerCaseSolution {
    public Set<String> standardizeEmails(Set<String> emails) {
        for (String email : emails) {
            email.toLowerCase();
        }
        return emails;
    }
}
