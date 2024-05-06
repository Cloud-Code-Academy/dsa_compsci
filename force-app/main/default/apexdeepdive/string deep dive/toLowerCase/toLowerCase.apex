/*
- Challenge Id: https://www.campapex.org/lesson/1337
- https://www.campapex.org/lesson/stringdeepdive/tolowercase

*/

/* Example Submission:
List<String> emails = new List<String>{'User@Example.com', 'admin@example.com', 'USER@example.com', 'info@example.com'};
Set<String> normalizedEmails = new Set<String>();

for(String email : emails) {
    normalizedEmails.add(email.toLowerCase());
}

System.debug(normalizedEmails); // Outputs a set of unique emails in lowercase
*/

public class TestException extends Exception{} 

public class Solution { 
    Set<String> execute(){ 
        submission 
        return normalizedEmails;
    }
} 

Solution sol = new Solution(); 

Set<String> expectedSet = new Set<String>{'user@example.com', 'admin@example.com', 'info@example.com'};
Set<String> resultSet = sol.execute(); 

if(resultSet == null || !resultSet.equals(expectedSet)){
    throw new TestException('The expected result should be a deduplicated set of emails in lowercase.');
}