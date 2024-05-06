/*
- Challenge Id: https://www.campapex.org/lesson/1337
- https://www.campapex.org/lesson/stringdeepdive/length

*/

/* Example Submission:
List<String> recordIds = new List<String>{'0012A00000BcdefGH', '0012A00000Bcdef', '0012A00000BcdefGHQ', '0012A00000BcdefG', '0012A00000BcdefGHI'};
int count18CharIds = 0;

for(String id : recordIds) {
    if(id.length() == 18) {
        count18CharIds++;
    }
}

return count18CharIds; // Outputs the number of 18-character IDs
*/

public class TestException extends Exception{} 

public class Solution { 
    Integer execute(){ 
        submission 
        return count18CharIds;
    }
} 

Solution sol = new Solution(); 

Integer expectedResult = 3; // Assuming that the correct count of 18-character IDs is 2
Integer resultCount = sol.execute(); 

if(resultCount == null || !resultCount.equals(expectedResult)){
    throw new TestException('The expected result should be the correct count of 18-character Salesforce IDs.');
}
